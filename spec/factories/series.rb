# frozen_string_literal: true

FactoryBot.define do
  factory :series do
    name { ['Magica2019', 'Magica1984', 'Magica2061', 'Magica2019 Evo'].sample }
  end
end
