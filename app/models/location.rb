class Location < ApplicationRecord
  has_many :crags
  accepts_nested_attributes_for :crags
end
