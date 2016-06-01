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

ActiveRecord::Schema.define(version: 20160601115550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_groups", force: :cascade do |t|
    t.string   "age",        null: false
    t.string   "color",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boxes", force: :cascade do |t|
    t.string   "name",         null: false
    t.integer  "age_group_id"
    t.integer  "status_id",    null: false
    t.integer  "user_id"
    t.integer  "location_id",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "branch_name",  null: false
    t.string   "address"
    t.string   "contact_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "category",   null: false
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.string   "name",                       null: false
    t.integer  "box_id"
    t.string   "brand"
    t.integer  "age_group_id"
    t.string   "upc"
    t.string   "manufacturer_suggested_age", null: false
    t.integer  "pieces",                     null: false
    t.string   "website"
    t.string   "purchased_from"
    t.string   "price"
    t.string   "toy_image"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
