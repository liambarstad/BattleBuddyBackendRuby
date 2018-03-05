class CreateAlarmLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :alarm_locations do |t|
      t.references :alarm, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
