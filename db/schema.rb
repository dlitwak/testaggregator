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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110715195825) do

  create_table "inbetweeners", :force => true do |t|
    t.string   "company"
    t.float    "taxi_price"
    t.float    "shuttle_price"
    t.float    "train_price"
    t.float    "bus_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "start_name"
    t.string   "end_name"
    t.integer  "result_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", :force => true do |t|
    t.float    "escore"
    t.float    "real_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.integer  "stops"
    t.float    "price_tag"
    t.float    "transit_time"
    t.string   "start_location"
    t.string   "end_location"
    t.string   "vehicles"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "end_time"
    t.time     "start_time"
    t.integer  "train"
    t.integer  "bus"
    t.integer  "plane"
    t.integer  "ferry"
    t.string   "departure"
    t.string   "arrival"
  end

  create_table "voyages", :force => true do |t|
    t.float    "escore"
    t.float    "real_price"
    t.integer  "position"
    t.integer  "stops"
    t.float    "price_tag"
    t.float    "transit_time"
    t.string   "transportation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "start_location"
    t.string   "end_location"
    t.integer  "result_id"
    t.string   "company"
    t.time     "start_time"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "end_time"
    t.string   "departure"
    t.string   "arrival"
  end

end
