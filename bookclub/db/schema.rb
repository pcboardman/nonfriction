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

ActiveRecord::Schema.define(version: 20151119215053) do

  create_table "books", force: :cascade do |t|
    t.string   "isbn",       limit: 14
    t.integer  "status"
    t.string   "author",     limit: 64
    t.string   "title",      limit: 64
    t.string   "location",   limit: 10
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "books", ["isbn"], name: "index_books_on_isbn", unique: true

  create_table "logins", force: :cascade do |t|
    t.integer  "login_id"
    t.integer  "member_id"
    t.integer  "access_level"
    t.string   "username",     limit: 40
    t.string   "hashed_pwd",   limit: 40
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "logins", ["login_id"], name: "index_logins_on_login_id", unique: true

  create_table "members", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "login_id"
    t.string   "first_name",    limit: 32, null: false
    t.string   "surname_name",  limit: 32, null: false
    t.string   "status",        limit: 16, null: false
    t.string   "telkom_number", limit: 20
    t.string   "cell_number",   limit: 18, null: false
    t.string   "email_addr",    limit: 64, null: false
    t.string   "address",       limit: 80
    t.text     "directions"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "members", ["member_id"], name: "index_members_on_member_id", unique: true

end
