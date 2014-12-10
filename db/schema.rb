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

ActiveRecord::Schema.define(version: 20141210165242) do

  create_table "lib_managers", force: true do |t|
    t.string "name",            limit: 255
    t.string "password_digest", limit: 255
  end

  create_table "readers", force: true do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.date     "date_of_birth"
    t.string   "program",       limit: 255
    t.string   "reg_location",  limit: 255
    t.date     "reg_date"
    t.date     "mid_date"
    t.string   "mid_location",  limit: 255
    t.string   "mid_initial",   limit: 255
    t.date     "end_date"
    t.string   "end_location",  limit: 255
    t.string   "end_initial",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
  end

  create_table "staffs", force: true do |t|
    t.string   "user_name",       limit: 255
    t.string   "password_digest", limit: 255
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "location",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
