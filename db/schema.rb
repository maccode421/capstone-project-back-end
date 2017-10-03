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

ActiveRecord::Schema.define(version: 20171003200546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  create_table "vehicle_logs", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "mileage"
    t.integer  "gas_price"
    t.string   "repair_type"
    t.integer  "total_price"
    t.date     "date"
    t.string   "receipt"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["vehicle_id"], name: "index_vehicle_logs_on_vehicle_id", using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.integer  "mileage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id", using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "vehicle_logs", "vehicles"
  add_foreign_key "vehicles", "users"
end
