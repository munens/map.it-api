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

ActiveRecord::Schema.define(version: 20170826025036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "pin_id"
    t.text     "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pin_id"], name: "index_blogs_on_pin_id", using: :btree
    t.index ["user_id"], name: "index_blogs_on_user_id", using: :btree
  end

  create_table "map_pins", force: :cascade do |t|
    t.integer "map_id"
    t.integer "pin_id"
  end

  create_table "maps", force: :cascade do |t|
    t.text     "name"
    t.text     "location"
    t.float    "center_lat"
    t.float    "center_lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pins", force: :cascade do |t|
    t.text     "location"
    t.float    "pin_lat"
    t.float    "pin_lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_maps", force: :cascade do |t|
    t.integer "user_id"
    t.integer "map_id"
  end

  create_table "user_pins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pin_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.integer  "age"
    t.string   "handle"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_foreign_key "blogs", "pins"
  add_foreign_key "blogs", "users"
end
