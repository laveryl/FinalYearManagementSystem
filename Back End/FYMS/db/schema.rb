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

ActiveRecord::Schema.define(version: 20160407143925) do

  create_table "admin_creations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admin_log_ins", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admin_reader_entries", force: :cascade do |t|
    t.integer  "Staff_ID",                 limit: 4
    t.string   "name",                     limit: 255
    t.string   "school",                   limit: 255
    t.string   "office_location",          limit: 255
    t.string   "email",                    limit: 255
    t.string   "availability",             limit: 255
    t.integer  "NumberProjectsSupervised", limit: 4
    t.integer  "second_reading",           limit: 4
    t.integer  "third_reading",            limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "log_ins", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "project_entries", force: :cascade do |t|
    t.integer  "Project_ID",   limit: 4
    t.string   "project_name", limit: 255
    t.integer  "student_no",   limit: 4
    t.string   "firstReader",  limit: 255
    t.string   "secondReader", limit: 255
    t.string   "thirdReader",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "admin_id",     limit: 4
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "student_no",    limit: 4
    t.integer  "first_reader",  limit: 4
    t.integer  "second_reader", limit: 4
    t.integer  "third_reader",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "reader_entries", force: :cascade do |t|
    t.integer  "Staff_ID",                 limit: 4
    t.string   "name",                     limit: 255
    t.string   "school",                   limit: 255
    t.string   "office_location",          limit: 255
    t.string   "email",                    limit: 255
    t.string   "availability",             limit: 255
    t.integer  "NumberProjectsSupervised", limit: 4
    t.integer  "secondReading",            limit: 4
    t.integer  "thirdReading",             limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "readers", force: :cascade do |t|
    t.string   "staffID",            limit: 255
    t.string   "name",               limit: 255
    t.string   "school",             limit: 255
    t.string   "officeLocation",     limit: 255
    t.string   "available",          limit: 255
    t.integer  "projectssupervised", limit: 4
    t.integer  "secondReading",      limit: 4
    t.integer  "thirdReading",       limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "readers_interests", force: :cascade do |t|
    t.string   "staff_id",   limit: 255
    t.string   "interest",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "static_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
