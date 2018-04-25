class CreateCrags < ActiveRecord::Migration[5.2]
  def change
    create_table :crags do |t|
      t.string :name
      t.string :rock_type
      t.string :season
      
      t.timestamps
    end
  end
end
