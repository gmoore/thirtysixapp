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

ActiveRecord::Schema.define(version: 20170823234315) do

  create_table "api_keys", force: :cascade do |t|
    t.string "key_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key_text"], name: "index_api_keys_on_key_text"
  end

  create_table "app_requests", force: :cascade do |t|
    t.string "request_id"
    t.string "api_key"
    t.string "controller"
    t.string "action"
    t.string "query_parameters"
    t.integer "request_time_in_milliseconds"
    t.integer "memory_in_mb"
    t.integer "objects"
    t.integer "classes"
    t.integer "modules"
    t.integer "floats"
    t.integer "strings"
    t.integer "regexps"
    t.integer "arrays"
    t.integer "hashes"
    t.integer "structs"
    t.integer "files"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["api_key"], name: "index_app_requests_on_api_key"
  end

end
