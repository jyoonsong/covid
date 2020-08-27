class CreateConfirmeds < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmeds do |t|
      t.integer :index
      t.string :dateConfirmed, optional: true
      t.boolean :routeIdentified, optional: true

      t.integer :si_id, foreign_key: true

      t.timestamps
    end
  end
end
