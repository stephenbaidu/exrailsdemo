# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150924182716) do

  create_table "apartment_bookings", force: :cascade do |t|
    t.integer  "apartment_id"
    t.integer  "guest_id"
    t.date     "booking_start_date"
    t.date     "booking_end_date"
    t.integer  "booking_status_id"
    t.string   "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "apartment_bookings", ["apartment_id"], name: "index_apartment_bookings_on_apartment_id"
  add_index "apartment_bookings", ["booking_status_id"], name: "index_apartment_bookings_on_booking_status_id"
  add_index "apartment_bookings", ["guest_id"], name: "index_apartment_bookings_on_guest_id"

  create_table "apartment_buildings", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "description"
    t.string   "address"
    t.string   "manager"
    t.string   "phone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "apartment_facilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartments", force: :cascade do |t|
    t.string   "name"
    t.integer  "apartment_building_id"
    t.integer  "apartment_type_id"
    t.string   "apartment_number"
    t.integer  "no_of_bathrooms"
    t.integer  "no_of_bedrooms"
    t.integer  "no_of_rooms"
    t.integer  "availability_status_id"
    t.string   "apartment_facility_ids", default: "--- []\n"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "apartments", ["apartment_building_id"], name: "index_apartments_on_apartment_building_id"
  add_index "apartments", ["apartment_type_id"], name: "index_apartments_on_apartment_type_id"
  add_index "apartments", ["availability_status_id"], name: "index_apartments_on_availability_status_id"

  create_table "availability_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "booking_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.integer  "gender_id"
    t.date     "date_of_birth"
    t.string   "first_language"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "guests", ["gender_id"], name: "index_guests_on_gender_id"

  create_table "permissions", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "permissions", ["name"], name: "index_permissions_on_name", unique: true

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "permissions", default: "--- []\n"
    t.string   "status"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "roles", ["name"], name: "index_roles_on_name", unique: true

  create_table "settings", force: :cascade do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "provider",                                    null: false
    t.string   "uid",                    default: "",         null: false
    t.string   "encrypted_password",     default: "",         null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,          null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,          null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.string   "role_ids",               default: "--- []\n"
    t.datetime "password_expired_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
