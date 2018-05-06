class User < ApplicationRecord
  has_many :weddings
  has_secure_password
end
