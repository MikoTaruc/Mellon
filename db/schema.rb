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

ActiveRecord::Schema.define(version: 20160207213112) do

  create_table "cookings", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "level",      limit: 4, default: 1, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "experience", limit: 4, default: 0, null: false
  end

  add_index "cookings", ["user_id"], name: "index_cookings_on_user_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.integer  "cooking_id",  limit: 4
    t.string   "name",        limit: 255
    t.text     "ingredients", limit: 65535
    t.text     "directions",  limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "recipes", ["cooking_id"], name: "index_recipes_on_cooking_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "level",      limit: 4,   default: 1, null: false
    t.integer  "experience", limit: 4,   default: 0, null: false
  end

  add_foreign_key "cookings", "users"
  add_foreign_key "recipes", "cookings"
end
