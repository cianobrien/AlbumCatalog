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

ActiveRecord::Schema.define(version: 20151112122212) do

  create_table "albums", force: true do |t|
    t.string   "name"
    t.string   "artist"
    t.text     "tracks"
    t.integer  "year"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "rating",     default: 0.0
  end

  create_table "friendships", force: true do |t|
    t.integer  "profile_1_id"
    t.integer  "profile_2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendships", ["profile_1_id"], name: "index_friendships_on_profile_1_id"
  add_index "friendships", ["profile_2_id"], name: "index_friendships_on_profile_2_id"

  create_table "line_items", force: true do |t|
    t.integer  "album_id"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "rating",     default: 0.0
  end

  add_index "line_items", ["album_id"], name: "index_line_items_on_album_id"
  add_index "line_items", ["profile_id"], name: "index_line_items_on_profile_id"

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "profile_picture_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio",                 default: "None Added"
  end

end
