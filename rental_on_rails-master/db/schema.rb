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

ActiveRecord::Schema.define(version: 20150721141420) do

  create_table "custumers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "company",    limit: 255
    t.string   "address",    limit: 255
    t.string   "cap",        limit: 255
    t.string   "city",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "fax",        limit: 255
    t.string   "email",      limit: 255
    t.string   "web",        limit: 255
    t.string   "vat",        limit: 255
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "order_id",   limit: 4
    t.string   "codfisc",    limit: 255
  end

  add_index "custumers", ["order_id"], name: "index_custumers_on_order_id", using: :btree

  create_table "deliveries", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "price",      limit: 255, default: "0"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "logo",              limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "logo_file_name",    limit: 255
    t.string   "logo_content_type", limit: 255
    t.integer  "logo_file_size",    limit: 4
    t.datetime "logo_updated_at"
  end

  create_table "orderlines", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "quantity",   limit: 4
  end

  add_index "orderlines", ["order_id"], name: "index_orderlines_on_order_id", using: :btree
  add_index "orderlines", ["product_id"], name: "index_orderlines_on_product_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "custumer_id",  limit: 4
    t.string   "product_ids",  limit: 255
    t.date     "start"
    t.date     "end"
    t.integer  "number_day",   limit: 4
    t.boolean  "cleaning",     limit: 1
    t.boolean  "insurance",    limit: 1
    t.integer  "delivery_id",  limit: 4
    t.integer  "taxation_id",  limit: 4
    t.decimal  "price_pretax",             precision: 10
    t.decimal  "price_tax",                precision: 10
    t.decimal  "total",                    precision: 10
    t.boolean  "status",       limit: 1
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "orders", ["custumer_id"], name: "index_orders_on_custumer_id", using: :btree
  add_index "orders", ["delivery_id"], name: "index_orders_on_delivery_id", using: :btree
  add_index "orders", ["taxation_id"], name: "index_orders_on_taxation_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "model",              limit: 255
    t.integer  "manufacturer_id",    limit: 4
    t.integer  "typology_id",        limit: 4
    t.decimal  "weight",                           precision: 60, scale: 4, default: 0.0
    t.string   "size",               limit: 255
    t.text     "description",        limit: 65535
    t.string   "image",              limit: 255
    t.decimal  "price",                            precision: 60, scale: 4, default: 0.0
    t.string   "serial_number",      limit: 255
    t.datetime "created_at",                                                              null: false
    t.datetime "updated_at",                                                              null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  add_index "products", ["manufacturer_id"], name: "index_products_on_manufacturer_id", using: :btree
  add_index "products", ["typology_id"], name: "index_products_on_typology_id", using: :btree

  create_table "taxations", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "value",       limit: 4
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "typologies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "custumers", "orders"
  add_foreign_key "orderlines", "orders"
  add_foreign_key "orderlines", "products"
  add_foreign_key "orders", "custumers"
  add_foreign_key "orders", "deliveries"
  add_foreign_key "orders", "taxations"
  add_foreign_key "products", "manufacturers"
  add_foreign_key "products", "typologies"
end
