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

ActiveRecord::Schema.define(version: 20140311222550) do

  create_table "dealer_locations", force: true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "description"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "company"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "message_boards", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "msgboards", force: true do |t|
    t.string   "title"
    t.string   "message"
    t.integer  "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_locations", force: true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "description"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
