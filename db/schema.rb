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

ActiveRecord::Schema.define(version: 20150622125615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string   "district_name"
    t.integer  "state_id"
    t.string   "gis_data"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "population_reports", force: :cascade do |t|
    t.integer  "site_id"
    t.integer  "child_population"
    t.integer  "woman_population"
    t.integer  "total_population"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "program_reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "site_id"
    t.date     "report_date"
    t.integer  "vitamin_a_red"
    t.integer  "vitamin_a_blue"
    t.integer  "deworming"
    t.integer  "iron_folate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sites", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "district_id"
    t.string   "site_name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "state_name"
    t.string   "gis_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "site_id"
    t.integer  "vitamin_a_red"
    t.integer  "vitamin_a_blue"
    t.integer  "deworming"
    t.integer  "iron_folate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.integer  "site_id"
    t.string   "post"
    t.integer  "phone_number"
    t.boolean  "registered_status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
