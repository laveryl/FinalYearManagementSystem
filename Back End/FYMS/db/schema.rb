<<<<<<< HEAD
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

ActiveRecord::Schema.define(version: 20160406165147) do

  create_table "Projects", primary_key: "project_ID", force: :cascade do |t|
    t.string "project_name", limit: 50
    t.string "student_no",   limit: 10
    t.string "1st_reader",   limit: 10
    t.string "2nd_reader",   limit: 10
    t.string "3rd_reader",   limit: 10
  end

  add_index "Projects", ["1st_reader"], name: "1st_reader", using: :btree
  add_index "Projects", ["2nd_reader"], name: "2nd_reader", using: :btree
  add_index "Projects", ["3rd_reader"], name: "3rd_reader", using: :btree

  create_table "Readers", primary_key: "staff_ID", force: :cascade do |t|
    t.string  "name",                limit: 80
    t.string  "school",              limit: 50
    t.string  "office_location",     limit: 80
    t.string  "email",               limit: 60
    t.integer "projects_supervised", limit: 4,  default: 0
    t.integer "2nd_reading",         limit: 4,  default: 0
    t.integer "3rd_reading",         limit: 4,  default: 0
  end

  create_table "Readers_Interests", id: false, force: :cascade do |t|
    t.string "reader_ID", limit: 10, null: false
    t.string "interest",  limit: 60, null: false
  end

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

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "Projects", "Readers", column: "1st_reader", primary_key: "staff_ID", name: "Projects_ibfk_1", on_delete: :nullify
  add_foreign_key "Projects", "Readers", column: "2nd_reader", primary_key: "staff_ID", name: "Projects_ibfk_2", on_delete: :nullify
  add_foreign_key "Projects", "Readers", column: "3rd_reader", primary_key: "staff_ID", name: "Projects_ibfk_3", on_delete: :nullify
  add_foreign_key "Readers_Interests", "Readers", column: "reader_ID", primary_key: "staff_ID", name: "Readers_Interests_ibfk_1", on_delete: :cascade
end
=======
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

ActiveRecord::Schema.define(version: 20160406165147) do

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

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
>>>>>>> 52784d19fdf137df3a85b2fbf9a4d6d602572788
