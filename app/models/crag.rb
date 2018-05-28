class Crag < ApplicationRecord
  belongs_to :location
  has_many :crag_flags
  has_many :flags, through: :crag_flags
  accepts_nested_attributes_for :flags, reject_if: :all_blank

  def crag_flags=(crag_flags)
    self.crag_flags.last.update(crag_flags)
  end


end
