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

ActiveRecord::Schema.define(version: 20160219025241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "maps", force: :cascade do |t|
    t.string   "name"
    t.hstore   "mappings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "request_method"
    t.string   "request_path"
    t.json     "path_params"
    t.json     "request_params"
    t.json     "request_headers"
    t.string   "body_type"
    t.string   "response_status"
    t.json     "response_headers"
    t.string   "response_type"
    t.text     "response_body"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.json     "request_boy"
    t.string   "note"
  end

end
