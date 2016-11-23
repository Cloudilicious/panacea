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

ActiveRecord::Schema.define(version: 20161122042902) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "pharmacy_id"
    t.datetime "appointment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pharmacy_id"], name: "index_bookings_on_pharmacy_id"
    t.index ["profile_id"], name: "index_bookings_on_profile_id"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "address"
    t.integer  "suburb_id"
    t.decimal  "lat",        precision: 9, scale: 6
    t.decimal  "lng",        precision: 9, scale: 6
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "avatar"
    t.index ["address"], name: "index_pharmacies_on_address", unique: true
    t.index ["suburb_id"], name: "index_pharmacies_on_suburb_id"
    t.index ["user_id"], name: "index_pharmacies_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "suburb_id"
    t.integer  "allergy_id"
    t.string   "medicare_no"
    t.string   "concession_no"
    t.date     "date_of_birth"
    t.string   "sex"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["allergy_id"], name: "index_profiles_on_allergy_id"
    t.index ["suburb_id"], name: "index_profiles_on_suburb_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suburbs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
