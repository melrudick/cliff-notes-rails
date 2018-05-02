class Flag < ApplicationRecord
  has_many :crags, through: :crag_flags
end
