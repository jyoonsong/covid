class CreateSis < ActiveRecord::Migration[5.2]
  def change
    create_table :sis do |t|
      t.string :name
      t.integer :inProcessThisWeek
      t.integer :inProcessAccumulated
      t.integer :monitoredThisWeek
      t.integer :monitoredAccumulated

      t.timestamps
    end
  end
end
