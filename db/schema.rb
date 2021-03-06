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

ActiveRecord::Schema.define(version: 20140927232729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "replies", force: true do |t|
    t.integer  "user_id"
    t.integer  "spotfix_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "replies", ["user_id", "spotfix_id"], name: "index_replies_on_user_id_and_spotfix_id", unique: true, using: :btree

  create_table "spotfixes", force: true do |t|
    t.integer  "owner_id"
    t.string   "title"
    t.text     "description"
    t.integer  "estimated_hours"
    t.integer  "estimated_people"
    t.string   "status"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "fix_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spotfixes", ["owner_id"], name: "index_spotfixes_on_owner_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
