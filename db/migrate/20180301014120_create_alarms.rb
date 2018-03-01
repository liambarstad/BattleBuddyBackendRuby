class CreateAlarms < ActiveRecord::Migration[5.1]
  def change
    create_table :alarms do |t|
      t.boolean :active, { default: false }
      t.string :time
      t.boolean :itemized, { default: false }
      t.boolean :localized, { default: false }

      t.timestamps
    end
  end
end
