# frozen_string_literal: true

class SkillVariable < ApplicationRecord
  belongs_to :skill

  validates :level, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 7, only_integer: true }
  validates :recast, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 6, only_integer: true }
  validates :damage, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 200, only_integer: true }
end
