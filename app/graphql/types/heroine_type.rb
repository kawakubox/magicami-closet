# frozen_string_literal: true

module Types
  class HeroineType < Types::BaseObject
    field :first_name, String, null: true
    field :family_name, String, null: true
    field :blood_type, String, null: true
    field :birthday, String, null: true
    field :height, Integer, null: true
    field :weight, Integer, null: true
    field :bust, Integer, null: true
    field :waist, Integer, null: true
    field :hip, Integer, null: true
  end
end
