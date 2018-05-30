class CragFlag < ApplicationRecord
  belongs_to :crag
  belongs_to :flag
  has_many :comments
  has_many :users, through: :comments
end
