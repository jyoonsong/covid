class CreateConfirmeds < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmeds do |t|
      t.integer :index
      t.string :dateConfirmed
      t.boolean :routeIentified
      t.integer :age

      t.timestamps
    end
  end
end
