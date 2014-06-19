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

ActiveRecord::Schema.define(version: 20140618205916) do

  create_table "audits", force: true do |t|
    t.string   "status",         limit: 45, null: false
    t.string   "remote_return",  limit: 5,  null: false
    t.integer  "transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "audits", ["transaction_id"], name: "index_audits_on_transaction_id", using: :btree

  create_table "finance_manager_sessions", force: true do |t|
    t.string   "access_token",       limit: 140
    t.integer  "finance_manager_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finance_managers", force: true do |t|
    t.string   "name",        limit: 100, null: false
    t.string   "description", limit: 140
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transaction_types", force: true do |t|
    t.string   "name",        limit: 55,  null: false
    t.string   "description", limit: 140
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.float    "value",                      null: false
    t.string   "date"
    t.string   "category"
    t.string   "involved_person"
    t.integer  "transaction_type_id"
    t.integer  "finance_manager_session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["finance_manager_session_id"], name: "index_transactions_on_finance_manager_session_id", using: :btree
  add_index "transactions", ["transaction_type_id"], name: "index_transactions_on_transaction_type_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",               limit: 55,  null: false
    t.string   "system_access_token", limit: 140, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
