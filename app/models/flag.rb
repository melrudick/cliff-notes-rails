class Flag < ApplicationRecord
  has_many :crag_flags
  has_many :crags, through: :crag_flags

end
