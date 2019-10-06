# frozen_string_literal: true

require 'csv'

HEADER_DICT = {
  'ヒロイン': :heroine_name,
  'レア度': :rarity,
  'グループ': :group,
  'ドレス名': :dress_name,
  '属性': :attribution,
  'タイプ': :style,
  'レベル': :level,
  'HP': :hit_point,
  '攻撃': :attack,
  '防御': :defense,
  '速度': :agility,
  '的中': :dexterity,
  '抵抗': :resist
}.freeze.with_indifferent_access

RARITY_DICT = {
  'UR': :ultra_rare,
  'SR': :super_rare,
  'R': :rare,
  'N': :normal
}.freeze.with_indifferent_access

rarity = proc do |field, field_info|
  if field_info.header == :rarity
    RARITY_DICT[field]
  else
    field
  end
end

def reset_tables
  con = ActiveRecord::Base.connection
  con.execute('DELETE FROM dress_parameters')
  con.execute("SELECT setval ('dress_parameters_id_seq', 1, false)")
  con.execute('DELETE FROM dresses')
  con.execute("SELECT setval ('dresses_id_seq', 1, false)")
end

def dress_param(row)
  {
    heroine: Heroine.find_by(first_name: row[:heroine_name]),
    group: row[:group],
    rarity: row[:rarity],
    attribution: row[:attribution],
    style: row[:style],
  }
end

def dress_parameter_param(row)
  {
    level: row[:level],
    hit_point: row[:hit_point],
    attack: row[:attack],
    defense: row[:defense],
    agility: row[:agility],
    dexterity: row[:dexterity],
    resist: row[:resist],
  }
end

reset_tables

csv = CSV.read('db/fixtures/dresses.tsv',
               col_sep: "\t",
               headers: :first_row,
               header_converters: ->(h) { HEADER_DICT[h] },
               converters: [rarity])

csv.each do |row|
  dress = Dress.create!(dress_param(row))
  DressParameter.create!(dress: dress, **dress_parameter_param(row))
end
