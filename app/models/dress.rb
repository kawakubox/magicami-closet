# frozen_string_literal: true

class Dress < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :heroine
  has_many :dress_parameters, dependent: :delete_all
end
