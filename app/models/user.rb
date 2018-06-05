class User < ApplicationRecord
  has_many :comments
  has_many :crag_flags, through: :comments
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
end
