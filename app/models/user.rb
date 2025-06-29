class User < ApplicationRecord
  has_secure_password
  has_many :todos
  validates :email, presence: true, uniqueness: true
end 