class CreateLanguageSis < ActiveRecord::Migration[5.2]
  def change
    create_table :language_sis do |t|
      t.belongs_to :language, foreign_key: true
      t.belongs_to :si, foreign_key: true

      t.timestamps
    end
  end
end
