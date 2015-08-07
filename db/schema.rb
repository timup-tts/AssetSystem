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

ActiveRecord::Schema.define(version: 20150807022628) do

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["ticket_id"], name: "index_comments_on_ticket_id"

  create_table "contracts", force: :cascade do |t|
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "contract_number"
    t.string   "contract_title"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "vendor"
    t.string   "status"
    t.string   "contact"
    t.text     "description"
    t.string   "po_number"
    t.date     "purchase_date"
    t.string   "contract_cost"
    t.string   "contract_attach_file_name"
    t.string   "contract_attach_content_type"
    t.integer  "contract_attach_file_size"
    t.datetime "contract_attach_updated_at"
    t.string   "contract_type"
  end

  create_table "inventories", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "name"
    t.string   "barcode"
    t.string   "serial"
    t.string   "model"
    t.string   "equipment"
    t.string   "owner"
    t.integer  "user_id"
    t.datetime "purchasedate"
    t.text     "comments"
    t.string   "status"
    t.string   "manufacturer"
    t.string   "ip_address"
    t.string   "department"
    t.string   "service_tag"
    t.string   "operating_system"
    t.date     "purchase_date"
  end

  add_index "inventories", ["user_id"], name: "index_inventories_on_user_id"

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "contact"
    t.string   "severity"
    t.string   "assigned"
    t.string   "summary"
    t.text     "description"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.string   "status"
  end

end
