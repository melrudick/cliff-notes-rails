class Crag < ApplicationRecord
  belongs_to :location
  has_many :comments
  has_many :users, through: :comments




end
