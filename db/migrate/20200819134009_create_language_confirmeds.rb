class CreateLanguageConfirmeds < ActiveRecord::Migration[5.2]
  def change
    create_table :language_confirmeds do |t|
      t.belongs_to :language, foreign_key: true
      t.belongs_to :confirmed, foreign_key: true

      t.string :name
      t.string :genderAge, optional: true
      t.string :residence, optional: true
      t.string :infectionRoute, optional: true
      t.text :movementRoute, optional: true

      t.timestamps
    end
  end
end
