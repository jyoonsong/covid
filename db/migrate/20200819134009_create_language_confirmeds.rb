class CreateLanguageConfirmeds < ActiveRecord::Migration[5.2]
  def change
    create_table :language_confirmeds do |t|
      t.belongs_to :language, foreign_key: true
      t.belongs_to :confirmed, foreign_key: true

      t.string :name
      t.string :gender
      t.string :infectionRoute
      t.text :movementRoute

      t.timestamps
    end
  end
end
