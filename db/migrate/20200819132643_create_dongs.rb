class CreateDongs < ActiveRecord::Migration[5.2]
  def change
    create_table :dongs do |t|
      t.string :name
      t.integer :today
      t.integer :thisWeek
      t.integer :lastWeek
      t.integer :acuumulated

      t.timestamps
    end
  end
end
