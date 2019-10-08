# frozen_string_literal: true

module Types
  class SkillType < Types::BaseObject
    field :dress, Types::DressType, null: false
    field :number, Integer, null: false
    field :name, String, null: false
    field :maxLevel, Integer, null: false
    field :description, String, null: false
  end
end
