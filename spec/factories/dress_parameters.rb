# frozen_string_literal: true

FactoryBot.define do
  factory :dress_parameter do
    dress
    sequence(:level) { |i| i }
    hit_point { Random.rand(2000..10_000) }
    attack { Random.rand(200..800) }
    defense { Random.rand(200..800) }
    agility { Random.rand(40..100) }
    dexterity { Random.rand(20..60) }
    regist { Random.rand(20..60) }
  end
end
