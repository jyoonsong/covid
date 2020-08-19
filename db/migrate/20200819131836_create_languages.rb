class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|

      t.string :name

      t.string :title
      t.string :location
      t.string :date
      t.string :numConfirmed
      t.string :route
      t.string :prevention
      t.string :inProcess
      t.string :monitored

      t.string :thisWeek
      t.string :accumulated
      t.string :numConfirmedByLocation
      t.string :today
      t.string :lastWeek
      t.string :guide

      t.string :index
      t.string :residence
      t.string :dateConfirmed
      t.string :routeIdentified
      t.string :genderAge
      t.string :confirmedName
      t.string :infectionRoute
      t.string :movementRoute
      
      t.string :image

      t.timestamps
    end
  end
end
