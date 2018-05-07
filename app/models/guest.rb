class Guest < ApplicationRecord
  belongs_to :household
  belongs_to :wedding
  has_many :attendances
  has_many :events, through: :attendances
end
