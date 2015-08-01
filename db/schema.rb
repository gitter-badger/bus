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

ActiveRecord::Schema.define(version: 20150801024534) do

  create_table "bills", force: :cascade do |t|
    t.integer  "price"
    t.integer  "amount"
    t.integer  "invoice_id"
    t.string   "invoice_type"
    t.text     "invoice_data"
    t.text     "data"
    t.string   "state"
    t.string   "payment_code"
    t.datetime "paid_at"
    t.integer  "user_credits"
    t.datetime "deadline"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "price"
    t.integer  "schedule_id"
    t.integer  "bill_id"
    t.string   "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "origin"
    t.string   "destination"
    t.string   "direction"
    t.integer  "price"
    t.text     "description"
    t.text     "announcement"
    t.string   "route_map_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "departure_time"
    t.integer  "route_id"
    t.string   "registration_number"
    t.string   "contact"
    t.integer  "vehicle_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "user_cart_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "schedule_id"
    t.integer  "route_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "name"
    t.string   "avatar_url"
    t.string   "cover_photo_url"
    t.string   "gender"
    t.string   "fbid"
    t.string   "uid"
    t.string   "identity"
    t.string   "organization_code"
    t.string   "department_code"
    t.string   "invoice_subsume_token"
    t.datetime "invoice_subsume_token_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: :cascade do |t|
    t.integer  "capacity"
    t.text     "description"
    t.text     "seat_info"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
