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

ActiveRecord::Schema.define(version: 20180703153841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "agency_name" #referenced by other tables
    t.string "agency_url"
    t.string "agency_timezone"
    t.string "agency_lang"
    t.string "agency_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendar_dates", force: :cascade do |t|
    t.string "service_id" #referenced by other tables
    t.date "date"
    t.integer "exception_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendars", force: :cascade do |t|
    t.string "service_id" #referenced by other tables
    t.integer "monday"
    t.integer "tuesday"
    t.integer "wednesday"
    t.integer "thursday"
    t.integer "friday"
    t.integer "saturday"
    t.integer "sunday"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.integer "route_id" #referenced by other tables
    t.integer "agency_id" #references agency
    t.string "route_short_name"
    t.string "route_long_name"
    t.string "route_desc"
    t.integer "route_type"
    t.string "route_url"
    t.string "route_color"
    t.string "route_text_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.string "shape_id" #referenced by other tables
    t.decimal "shape_pt_lat", precision: 10, scale: 6
    t.decimal "shape_pt_lon", precision: 10, scale: 6
    t.integer "shape_pt_sequence"
    t.integer "shape_dist_traveled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stop_times", force: :cascade do |t|
    t.string "trip_id" #references trips
    t.time "arrival_time"
    t.time "departure_time"
    t.string "stop_id" #referenced by other tables
    t.integer "stop_sequence"
    t.string "stop_headsign"
    t.integer "pickup_type"
    t.integer "drop_off_type"
    t.float "shape_dist_travelled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stops", force: :cascade do |t|
    t.string "stop_id" #referenced by other tables
    t.string "stop_code"
    t.string "stop_name"
    t.string "stop_desc"
    t.decimal "stop_lat", precision: 10, scale: 6
    t.decimal "stop_lon", precision: 10, scale: 6
    t.string "zone_id"
    t.string "stop_url"
    t.string "location_type"
    t.string "parent_station" #references stop_id
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.string "from_stop_id" #references stop
    t.string "to_stop_id" #references stop
    t.integer "transfer_type"
    t.integer "min_transfer_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "route_id" #references route
    t.string "service_id"  #references calander && calendar_dates
    t.string "trip_id" #referenced by other tables
    t.string "trip_headsign"
    t.integer "direction_id"
    t.string "block_id"
    t.string "shape_id" #references shape
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
