class User < ApplicationRecord
  has_many :comments
  has_many :crags, through: :comments
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
end
