class Crag < ApplicationRecord
  belongs_to :location
  has_many :crag_flags
  has_many :flags, through: :crag_flags
  accepts_nested_attributes_for :flags, reject_if: :all_blank
end
