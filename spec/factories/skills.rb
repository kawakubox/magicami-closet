# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    dress
    number { Random.rand(1..3) }
    name { Faker::Games::Pokemon.move }
    max_level { Random.rand(1..9) }
    description { Faker::Lorem.sentence }
  end
end
