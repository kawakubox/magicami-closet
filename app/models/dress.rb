# frozen_string_literal: true

class Dress < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  enum rarity: { ultra_rare: 4, super_rare: 3, rare: 2, normal: 1 }

  belongs_to :heroine
  has_many :dress_parameters, dependent: :delete_all
end
