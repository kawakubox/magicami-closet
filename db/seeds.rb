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
  '抵抗': :resist,
  'スキル名_1': :skill_name_1,
  'スキル最大レベル_1': :skill_max_level_1,
  'スキルリキャスト_1': :skill_recast_1,
  'スキル説明_1': :skill_description_1,
  'スキル名_2': :skill_name_2,
  'スキル最大レベル_2': :skill_max_level_2,
  'スキルリキャスト_2': :skill_recast_2,
  'スキル説明_2': :skill_description_2,
  'スキル名_3': :skill_name_3,
  'スキル最大レベル_3': :skill_max_level_3,
  'スキルリキャスト_3': :skill_recast_3,
  'スキル説明_3': :skill_description_3,
}.with_indifferent_access

def reset_tables
  Dress.destroy_all
  con = ActiveRecord::Base.connection
  con.execute("SELECT setval ('dress_parameters_id_seq', 1, false)")
  con.execute("SELECT setval ('skills_id_seq', 1, false)")
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

def skill_param(row, index)
  {
    number: index,
    name: row["skill_name_#{index}".to_sym],
    max_level: row["skill_max_level_#{index}".to_sym],
    description: row["skill_description_#{index}".to_sym],
  }
end

reset_tables

csv = CSV.read('db/fixtures/dresses.tsv',
               col_sep: "\t",
               headers: :first_row,
               header_converters: ->(h) { HEADER_DICT[h] })

csv.each do |row|
  dress = Dress.create!(dress_param(row))
  DressParameter.create!(dress: dress, **dress_parameter_param(row))
  (1..3).each do |i|
    Skill.create!(dress: dress, **skill_param(row, i)) if row["skill_name_#{i}".to_sym].present?
  end
end
