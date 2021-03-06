class CreateGus < ActiveRecord::Migration[5.2]
  def change
    create_table :gus do |t|
      t.string :name
      t.integer :today
      t.integer :thisWeek
      t.integer :lastWeek
      t.integer :accumulated

      t.integer :si_id, foreign_key: true

      t.timestamps
    end
  end

  change_column_null :thisWeek, true
end
