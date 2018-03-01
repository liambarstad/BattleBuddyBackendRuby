class CreateItineraryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :itinerary_items do |t|
      t.string :name
      t.integer :time
      t.integer :time_unit

      t.timestamps
    end
  end
end
