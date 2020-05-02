# frozen_string_literal: true

class Series < ApplicationRecord
  validates :name, length: { minimum: 1, miximum: 100 }
end
