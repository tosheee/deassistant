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

ActiveRecord::Schema.define(version: 20160605162629) do

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

  create_table "product_descriptions", force: :cascade do |t|
    t.integer  "product_id"
    t.text     "product_description"
    t.string   "attr_p1"
    t.text     "attr_descript_p1"
    t.string   "attr_p2"
    t.text     "attr_descript_p2"
    t.string   "attr_p3"
    t.text     "attr_descript_p3"
    t.string   "attr_p4"
    t.text     "attr_descript_p4"
    t.string   "attr_p5"
    t.text     "attr_descript_p5"
    t.string   "attr_p6"
    t.text     "attr_descript_p6"
    t.string   "attr_p7"
    t.text     "attr_descript_p7"
    t.string   "attr_p8"
    t.text     "attr_descript_p8"
    t.string   "attr_p9"
    t.text     "attr_descript_p9"
    t.string   "attr_p10"
    t.text     "attr_descript_p10"
    t.string   "attr_p11"
    t.text     "attr_descript_p11"
    t.string   "attr_p12"
    t.text     "attr_descript_p12"
    t.string   "attr_p13"
    t.text     "attr_descript_p13"
    t.string   "attr_p14"
    t.text     "attr_descript_p14"
    t.string   "attr_p15"
    t.text     "attr_descript_p15"
    t.string   "attr_p16"
    t.text     "attr_descript_p16"
    t.string   "attr_p17"
    t.text     "attr_descript_p17"
    t.string   "attr_p18"
    t.text     "attr_descript_p18"
    t.string   "attr_p19"
    t.text     "attr_descript_p19"
    t.string   "attr_p20"
    t.text     "attr_descript_p20"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
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
