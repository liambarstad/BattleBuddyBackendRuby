# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180305020731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alarm_locations", force: :cascade do |t|
    t.bigint "alarm_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alarm_id"], name: "index_alarm_locations_on_alarm_id"
    t.index ["location_id"], name: "index_alarm_locations_on_location_id"
  end

  create_table "alarms", force: :cascade do |t|
    t.boolean "active", default: false
    t.string "time"
    t.boolean "itemized", default: false
    t.boolean "localized", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itinerary_items", force: :cascade do |t|
    t.string "name"
    t.integer "time"
    t.integer "time_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alarm_locations", "alarms"
  add_foreign_key "alarm_locations", "locations"
end
