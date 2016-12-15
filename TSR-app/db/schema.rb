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

ActiveRecord::Schema.define(version: 20161215182624) do

  create_table "apprentices", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_apprentices_on_email", unique: true
    t.index ["reset_password_token"], name: "index_apprentices_on_reset_password_token", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.text     "description"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.string   "email"
    t.string   "origin"
    t.string   "destination"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "master_id"
    t.integer  "apprentice_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["apprentice_id"], name: "index_events_on_apprentice_id"
    t.index ["master_id"], name: "index_events_on_master_id"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.string   "lesson"
    t.datetime "lesson_duration"
    t.date     "time_of_day"
    t.integer  "master_id"
    t.integer  "apprentice_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["apprentice_id"], name: "index_logs_on_apprentice_id"
    t.index ["master_id"], name: "index_logs_on_master_id"
  end

  create_table "masters", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_masters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_masters_on_reset_password_token", unique: true
  end

end
