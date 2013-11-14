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

ActiveRecord::Schema.define(version: 20131114162009) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "type"
    t.integer  "province_id"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["name"], name: "index_cities_on_name"
  add_index "cities", ["province_id"], name: "index_cities_on_province_id"
  add_index "cities", ["slug"], name: "index_cities_on_slug"
  add_index "cities", ["state_id"], name: "index_cities_on_state_id"
  add_index "cities", ["type"], name: "index_cities_on_type"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "countries", ["name"], name: "index_countries_on_name", unique: true
  add_index "countries", ["slug"], name: "index_countries_on_slug", unique: true

  create_table "postcodes", force: true do |t|
    t.string   "number"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "postcodes", ["city_id"], name: "index_postcodes_on_city_id"
  add_index "postcodes", ["number"], name: "index_postcodes_on_number"

  create_table "provinces", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "provinces", ["name"], name: "index_provinces_on_name"
  add_index "provinces", ["slug"], name: "index_provinces_on_slug"
  add_index "provinces", ["state_id"], name: "index_provinces_on_state_id"

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "states", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id"
  add_index "states", ["name"], name: "index_states_on_name"
  add_index "states", ["slug"], name: "index_states_on_slug"

end
