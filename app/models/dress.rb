# frozen_string_literal: true

class Dress < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :heroine
  has_many :dress_parameters, dependent: :delete_all

  validates :attribution, length: { maximum: 1 }
  validates :group, length: { maximum: 32 }
  validates :rarity, length: { maximum: 2 }
  validates :style, length: { maximum: 3 }
end
