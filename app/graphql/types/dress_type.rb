# frozen_string_literal: true

module Types
  class DressType < Types::BaseObject
    field :heroine, Types::HeroineType, null: true
    field :group, String, null: true
    field :rarity, String, null: true
    field :attribution, String, null: true
    field :style, String, null: true
  end
end
