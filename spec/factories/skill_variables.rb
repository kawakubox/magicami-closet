# frozen_string_literal: true

FactoryBot.define do
  factory :skill_variable do
    skill
    level { Random.rand(1..7) }
    recast { Random.rand(0..6) }
    damage { Random.rand(100..150) }
    value_1 { Random.rand(10..50) }
  end
end
