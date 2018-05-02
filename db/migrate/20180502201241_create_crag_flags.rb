class CreateCragFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :crag_flags do |t|
      t.string :comment
      t.integer :crag_id
      t.integer :flag_id

      t.timestamps
    end
  end
end
