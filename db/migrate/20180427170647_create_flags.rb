class CreateFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :flags do |t|
      t.string :content
      t.integer :crag_id
      t.timestamps
    end
  end
end
