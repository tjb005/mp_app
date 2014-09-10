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

ActiveRecord::Schema.define(version: 20140904034318) do

  create_table "aircrafts", force: true do |t|
    t.string   "reg"
    t.float    "w1"
    t.float    "w2"
    t.float    "w3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "w1s", force: true do |t|
    t.date     "date"
    t.string   "desc"
    t.float    "wt"
    t.float    "arm"
    t.float    "moment"
    t.string   "wca"
    t.integer  "aircraft_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "w1s", ["aircraft_id"], name: "index_w1s_on_aircraft_id"

end