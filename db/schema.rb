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

ActiveRecord::Schema.define(version: 20150811221357) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "previous_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "courses", ["previous_id"], name: "index_courses_on_previous_id"

  create_table "groups", force: :cascade do |t|
    t.string   "schedule"
    t.integer  "course_id"
    t.integer  "quota",      default: 30
    t.integer  "enrolled",   default: 0
    t.integer  "minimun",    default: 8
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "groups", ["course_id"], name: "index_groups_on_course_id"

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "favorite_color"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "person_courses", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "person_courses", ["group_id"], name: "index_person_courses_on_group_id"
  add_index "person_courses", ["person_id"], name: "index_person_courses_on_person_id"

end
