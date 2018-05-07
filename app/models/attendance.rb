class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :guest
end
