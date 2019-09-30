# frozen_string_literal: true

FactoryBot.define do
  factory :dress do
    heroine_id { Heroine.all.sample.id }
    group { ['Magica2019', 'Magica1984', 'Magica2061', 'Magica2019 Evo'].sample }
    rarity { Dress.rarities.keys.sample }
    attribution { %w[火 水 雷 光 闇].sample }
    style { %w[攻撃 防御 体力 支援].sample }
  end
end
