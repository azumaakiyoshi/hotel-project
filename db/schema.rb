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

ActiveRecord::Schema.define(version: 2020_07_26_051844) do

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prefecture_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "rating_rates", force: :cascade do |t|
    t.decimal "value", precision: 25, scale: 16, default: "0.0"
    t.string "author_type", limit: 10, null: false
    t.integer "author_id", null: false
    t.string "resource_type", limit: 10, null: false
    t.integer "resource_id", null: false
    t.string "scopeable_type", limit: 10
    t.integer "scopeable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id", "resource_type", "resource_id", "scopeable_type", "scopeable_id"], name: "index_rating_rates_on_author_and_resource_and_scopeable", unique: true
    t.index ["author_type", "author_id"], name: "index_rating_rates_on_author_type_and_author_id"
    t.index ["resource_type", "resource_id"], name: "index_rating_rates_on_resource_type_and_resource_id"
    t.index ["scopeable_type", "scopeable_id"], name: "index_rating_rates_on_scopeable_type_and_scopeable_id"
  end

  create_table "rating_ratings", force: :cascade do |t|
    t.decimal "average", precision: 25, scale: 16, default: "0.0"
    t.decimal "estimate", precision: 25, scale: 16, default: "0.0"
    t.integer "sum", default: 0
    t.integer "total", default: 0
    t.string "resource_type", limit: 10, null: false
    t.integer "resource_id", null: false
    t.string "scopeable_type", limit: 10
    t.integer "scopeable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_type", "resource_id", "scopeable_type", "scopeable_id"], name: "index_rating_rating_on_resource_and_scopeable", unique: true
    t.index ["resource_type", "resource_id"], name: "index_rating_ratings_on_resource_type_and_resource_id"
    t.index ["scopeable_type", "scopeable_id"], name: "index_rating_ratings_on_scopeable_type_and_scopeable_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "hotelname"
    t.string "name"
    t.string "email"
    t.datetime "checkin"
    t.datetime "checkout"
    t.integer "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hotel_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hotel_id"
    t.float "star"
  end

end
