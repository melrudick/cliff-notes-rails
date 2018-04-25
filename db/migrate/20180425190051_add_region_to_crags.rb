class AddRegionToCrags < ActiveRecord::Migration[5.2]
  def change
    add_column :crags, :region, :string
  end
end
