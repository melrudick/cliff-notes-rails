class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :crag_flag_id, :crag_id
  end
end
