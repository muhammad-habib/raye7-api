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

ActiveRecord::Schema.define(version: 20170605204302) do

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_groups_on_name", unique: true, using: :btree
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.decimal  "longitude",  precision: 10
    t.decimal  "latitude",   precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name"], name: "index_places_on_name", unique: true, using: :btree
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "seats"
    t.integer  "driver_id"
    t.integer  "source_id"
    t.integer  "destination_id"
    t.index ["destination_id"], name: "index_trips_on_destination_id", using: :btree
    t.index ["driver_id"], name: "index_trips_on_driver_id", using: :btree
    t.index ["source_id"], name: "index_trips_on_source_id", using: :btree
  end

  create_table "trips_users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "trip_id"
    t.index ["trip_id"], name: "index_trips_users_on_trip_id", using: :btree
    t.index ["user_id"], name: "index_trips_users_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fName"
    t.string   "lName"
    t.decimal  "phone",      precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "group_id"
    t.integer  "home_id"
    t.integer  "work_id"
    t.index ["group_id"], name: "index_users_on_group_id", using: :btree
    t.index ["home_id"], name: "index_users_on_home_id", using: :btree
    t.index ["work_id"], name: "index_users_on_work_id", using: :btree
  end

  add_foreign_key "trips", "places", column: "destination_id"
  add_foreign_key "trips", "places", column: "source_id"
  add_foreign_key "trips", "users", column: "driver_id"
  add_foreign_key "trips_users", "trips"
  add_foreign_key "trips_users", "users"
  add_foreign_key "users", "groups"
  add_foreign_key "users", "places", column: "home_id"
  add_foreign_key "users", "places", column: "work_id"
end
