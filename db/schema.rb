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

ActiveRecord::Schema.define(version: 20180913212438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ammenities", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "asset_name"
    t.text "description"
    t.string "pricing"
    t.integer "phone_number"
    t.string "email"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "listing_category_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "listing_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_ratings_on_listing_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.text "body"
    t.string "starrating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ratings", "listings"
end
