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

ActiveRecord::Schema.define(version: 2018_05_06_220645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "guest_id"
    t.boolean "attending"
    t.text "comment"
    t.boolean "table_assignment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["guest_id"], name: "index_attendances_on_guest_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "address"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "wedding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wedding_id"], name: "index_events_on_wedding_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "dietary_restrictions"
    t.boolean "child"
    t.string "category"
    t.bigint "household_id"
    t.bigint "wedding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_guests_on_household_id"
    t.index ["wedding_id"], name: "index_guests_on_wedding_id"
  end

  create_table "households", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.boolean "save_the_date_created"
    t.boolean "save_the_date_sent"
    t.boolean "invite_created"
    t.boolean "invite_sent"
    t.bigint "wedding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wedding_id"], name: "index_households_on_wedding_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "zipcode"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weddings", force: :cascade do |t|
    t.string "nickname"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_weddings_on_user_id"
  end

end
