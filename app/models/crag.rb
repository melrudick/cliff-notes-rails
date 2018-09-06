class Crag < ApplicationRecord
  belongs_to :location
  has_many :comments
  has_many :users, through: :comments
  scope :winter, -> { where(season: ["winter", "Winter"])}
  scope :spring, -> { where(season: "spring").or.where(season: "Spring")}
  scope :summer, -> { where(season: "summer").or.where(season: "Summer")}
  scope :fall, -> { where(season: ["fall", "Fall"])}




end

# @spring_crags = @location.crags.spring
