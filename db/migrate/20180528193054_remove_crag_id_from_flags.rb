class RemoveCragIdFromFlags < ActiveRecord::Migration[5.2]
  def change
    remove_column :flags, :crag_id, :integer
  end
end
