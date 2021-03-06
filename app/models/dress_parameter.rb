# frozen_string_literal: true

class DressParameter < ApplicationRecord
  belongs_to :dress

  validates :level, uniqueness: { scope: :dress_id }
end
