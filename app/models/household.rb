class Household < ApplicationRecord
  belongs_to :wedding
  has_many :guests
end
