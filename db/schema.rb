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

ActiveRecord::Schema.define(version: 20161205114407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_properties", force: :cascade do |t|
    t.integer  "property_type"
    t.integer  "numb_rooms"
    t.integer  "numb_bathrooms"
    t.integer  "rooms_avail"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "room_id"
  end

  create_table "about_rooms", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "monthly_rent"
    t.boolean  "add_utility_cost"
    t.integer  "room_type"
    t.integer  "furnished"
    t.boolean  "ensuite"
    t.date     "avail_from"
    t.integer  "min_stay"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "house_rules", force: :cascade do |t|
    t.string "name"
  end

  create_table "house_rules_rooms", id: false, force: :cascade do |t|
    t.integer "house_rule_id", null: false
    t.integer "room_id",       null: false
    t.index ["house_rule_id", "room_id"], name: "index_house_rules_rooms_on_house_rule_id_and_room_id", using: :btree
  end

  create_table "housemates", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "numb_current_mates"
    t.integer  "pref_gender"
    t.integer  "pref_occupation"
    t.integer  "pref_age_min"
    t.integer  "pref_age_max"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "room_id"
    t.string   "suburb"
    t.string   "province"
    t.string   "country"
  end

  create_table "room_amenities", force: :cascade do |t|
    t.string "name"
  end

  create_table "room_amenities_rooms", id: false, force: :cascade do |t|
    t.integer "room_amenity_id", null: false
    t.integer "room_id",         null: false
    t.index ["room_amenity_id", "room_id"], name: "index_room_amenities_rooms_on_room_amenity_id_and_room_id", using: :btree
  end

  create_table "room_images", force: :cascade do |t|
    t.string   "caption"
    t.integer  "room_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "phone"
    t.integer  "poster_type"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
