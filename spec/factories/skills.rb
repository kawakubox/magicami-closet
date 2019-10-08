# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    dress
    number { Random.rand(1..3) }
    name { Faker::Games::Pokemon.move }
    max_level { Random.rand(1..9) }
    description { Faker::Lorem.sentence }

    after(:build) do |skill|
      skill.skill_variables << [
        build(:skill_variable, skill: skill, level: 1),
        build(:skill_variable, skill: skill, level: 2)
      ]
    end
  end
end
