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

ActiveRecord::Schema.define(version: 20150729175603) do

  create_table "contracts", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "contract_number"
    t.text     "contract_title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "vendor"
    t.text     "status"
    t.text     "contact"
    t.text     "description"
    t.text     "po_number"
    t.datetime "purchase_date"
    t.text     "contract_cost"
  end

  create_table "inventories", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "name"
    t.text     "barcode"
    t.text     "serial"
    t.text     "model"
    t.text     "equipment"
    t.text     "owner"
    t.integer  "user_id"
    t.datetime "purchasedate"
    t.text     "comments"
    t.text     "status"
  end

  add_index "inventories", ["user_id"], name: "index_inventories_on_user_id"

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
