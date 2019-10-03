# frozen_string_literal: true

module Types
  class DressParameterType < Types::BaseObject
    field :dress, Types::DressType, null: false
    field :level, Integer, null: false
    field :hit_point, Integer, null: false
    field :attack, Integer, null: false
    field :defense, Integer, null: false
    field :agility, Integer, null: false
    field :dexterity, Integer, null: false
    field :resist, Integer, null: false
  end
end
