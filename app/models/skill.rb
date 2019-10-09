# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :dress

  validates :name, presence: true, length: { maximum: 16 }
  validates :number, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 3, only_integer: true },
                     uniqueness: { scope: %i[dress_id] }
  validates :max_level, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 9, only_integer: true }

  has_many :skill_variables, dependent: :delete_all
end
