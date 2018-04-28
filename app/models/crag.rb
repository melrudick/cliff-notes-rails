class Crag < ApplicationRecord
  belongs_to :location
  has_many :flags
  accepts_nested_attributes_for :flags, reject_if: :all_blank
end
