class Wedding < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :households
  has_many :guests
end
