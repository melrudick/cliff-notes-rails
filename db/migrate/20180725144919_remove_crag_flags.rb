class RemoveCragFlags < ActiveRecord::Migration[5.2]
  def change
    drop_table :crag_flags
  end
end
