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

ActiveRecord::Schema.define(version: 20170903133438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.integer "image_id"
    t.integer "property_id"
    t.string "src"
    t.string "alt"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rooms"
    t.integer "property_id"
    t.integer "price"
    t.text "adress_line1"
    t.text "adress_line2"
    t.text "postcode"
    t.string "city"
    t.string "country"
    t.integer "longitude"
    t.integer "latitude"
    t.boolean "available"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "request_id"
    t.integer "user_id"
    t.integer "property_id"
    t.boolean "status"
    t.date "request_date"
    t.date "approval_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "review_id"
    t.integer "user_id"
    t.integer "submitter_id"
    t.text "review"
    t.date "review_date"
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.serial "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
  end

end
