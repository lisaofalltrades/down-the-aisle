class Event < ApplicationRecord
  belongs_to :wedding
  has_many :attendances
  has_many :guests, through: :attendances
end
