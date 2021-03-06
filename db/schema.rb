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

ActiveRecord::Schema.define(version: 20170502010605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_lists", force: :cascade do |t|
    t.string   "book_1"
    t.string   "book_2"
    t.string   "book_3"
    t.string   "book_4"
    t.string   "book_5"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "book_lists", ["question_id"], name: "index_book_lists_on_question_id", using: :btree
  add_index "book_lists", ["user_id"], name: "index_book_lists_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.string   "c1"
    t.string   "c2"
    t.string   "c3"
    t.string   "c4"
    t.string   "c5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.string   "result"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "results", ["question_id"], name: "index_results_on_question_id", using: :btree
  add_index "results", ["user_id"], name: "index_results_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "book_lists", "questions"
  add_foreign_key "book_lists", "users"
  add_foreign_key "results", "questions"
  add_foreign_key "results", "users"
end
