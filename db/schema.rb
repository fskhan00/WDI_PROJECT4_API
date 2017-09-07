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

ActiveRecord::Schema.define(version: 20170906171753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.string "imagefile"
    t.string "description"
    t.string "alt"
    t.bigint "rental_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_pictures_on_rental_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "rooms"
    t.decimal "price"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "post_code"
    t.string "country"
    t.decimal "lat"
    t.decimal "long"
    t.boolean "available"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.boolean "approved"
    t.date "request_date"
    t.date "approval_date"
    t.bigint "rental_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sender_id"
    t.integer "receiver_id"
    t.string "status"
    t.index ["rental_id"], name: "index_requests_on_rental_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "ranking"
    t.text "review"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rental_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.text "image"
  end

  add_foreign_key "pictures", "rentals"
  add_foreign_key "rentals", "users"
  add_foreign_key "requests", "rentals"
  add_foreign_key "reviews", "users"
end
