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

ActiveRecord::Schema.define(version: 20160321174204) do

  create_table "Projects", primary_key: "project_ID", force: :cascade do |t|
    t.string "project_name", limit: 50
    t.string "student_no",   limit: 10
    t.string "1st_reader",   limit: 10
    t.string "2nd_reader",   limit: 10
    t.string "3rd_reader",   limit: 10
  end

  add_index "projects", ["1st_reader"], name: "1st_reader", using: :btree
  add_index "projects", ["2nd_reader"], name: "2nd_reader", using: :btree
  add_index "projects", ["3rd_reader"], name: "3rd_reader", using: :btree

  create_table "Readers", primary_key: "staff_ID", force: :cascade do |t|
    t.string  "name",                limit: 80
    t.string  "school",              limit: 50
    t.string  "office_location",     limit: 80
    t.string  "email",               limit: 60
    t.string  "available",           limit: 3
    t.integer "projects_supervised", limit: 4,  default: 0
    t.integer "2nd_reading",         limit: 4,  default: 0
    t.integer "3rd_reading",         limit: 4,  default: 0
  end

  create_table "Readers_Interests", id: false, force: :cascade do |t|
    t.string "reader_ID", limit: 10, null: false
    t.string "interest",  limit: 60, null: false
  end

  create_table "static_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "Projects", "Readers", column: "1st_reader", primary_key: "staff_ID", name: "projects_ibfk_1", on_delete: :nullify
  add_foreign_key "Projects", "Readers", column: "2nd_reader", primary_key: "staff_ID", name: "projects_ibfk_2", on_delete: :nullify
  add_foreign_key "Projects", "Readers", column: "3rd_reader", primary_key: "staff_ID", name: "projects_ibfk_3", on_delete: :nullify
  add_foreign_key "Readers_Interests", "Readers", column: "reader_ID", primary_key: "staff_ID", name: "readers_interests_ibfk_1", on_delete: :cascade
end
