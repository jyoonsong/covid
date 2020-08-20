class CreateDongs < ActiveRecord::Migration[5.2]
  def change
    create_table :dongs do |t|
      t.string :name
      t.integer :today
      t.integer :thisWeek
      t.integer :lastWeek
      t.integer :accumulated

      t.integer :gu_id, foreign_key: true

      t.timestamps
    end
  end
end
