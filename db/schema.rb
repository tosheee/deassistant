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

ActiveRecord::Schema.define(version: 20161029171258) do

  create_table "admin_feature_brand_attributes", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "features_brands_id"
    t.string   "seria"
    t.text     "seria_description"
    t.string   "model"
    t.text     "aliases"
    t.text     "model_description"
    t.string   "ean"
    t.string   "pn"
    t.text     "example"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "admin_features_brands", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "brand"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "admin_other_descript_attributes", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "product_attribute_id"
    t.integer  "num_view"
    t.string   "label_description"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "admin_product_attributes", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name_attribute"
    t.text     "attribute_description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "num_view"
  end

  create_table "admin_product_categories", force: :cascade do |t|
    t.string   "name_category"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "admin_products", force: :cascade do |t|
    t.integer  "product_category_id"
    t.string   "product_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "apple_macbooks", force: :cascade do |t|
    t.string   "brand"
    t.string   "seria"
    t.string   "model"
    t.string   "pn"
    t.string   "ean"
    t.string   "cpu_brand"
    t.string   "cpu_seria"
    t.string   "cpu_model"
    t.string   "ram"
    t.string   "storage"
    t.string   "video_brand"
    t.string   "video_model"
    t.string   "display"
    t.string   "resolution"
    t.string   "touch_screen"
    t.string   "os"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "features_countries", force: :cascade do |t|
    t.string   "name"
    t.text     "featrure"
    t.string   "example"
    t.string   "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tablets", force: :cascade do |t|
    t.string   "brand"
    t.string   "seria"
    t.string   "model"
    t.string   "connection"
    t.string   "storage"
    t.string   "color"
    t.string   "aen"
    t.string   "partnumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
