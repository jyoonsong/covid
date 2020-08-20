class CreateConfirmeds < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmeds do |t|
      t.integer :index
      t.string :dateConfirmed
      t.boolean :routeIdentified
      t.integer :age

      t.integer :dong_id, foreign_key: true

      t.timestamps
    end
  end
end
