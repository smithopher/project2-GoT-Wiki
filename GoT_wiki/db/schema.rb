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

ActiveRecord::Schema.define(version: 20150917160430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "title"
    t.text     "content"
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "house_id"
    t.string   "photo_path"
    t.datetime "created_at",  null: false
  end

  add_index "articles", ["author_id"], name: "index_articles_on_author_id", using: :btree
  add_index "articles", ["category_id"], name: "index_articles_on_category_id", using: :btree
  add_index "articles", ["house_id"], name: "index_articles_on_house_id", using: :btree

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "type_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string   "house_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "articles", "authors"
  add_foreign_key "articles", "categories"
  add_foreign_key "articles", "houses"
end
