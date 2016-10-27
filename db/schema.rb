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

ActiveRecord::Schema.define(version: 20161027050141) do

  create_table "photo_tagged_users", force: :cascade do |t|
    t.integer  "photo_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id", "user_id"], name: "index_photo_tagged_users_on_photo_id_and_user_id", unique: true
    t.index ["photo_id"], name: "index_photo_tagged_users_on_photo_id"
    t.index ["user_id"], name: "index_photo_tagged_users_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "description"
    t.string   "asset_url"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "user_follower_relationships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "follower_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id", "follower_id"], name: "index_user_follower_relationships_on_user_id_and_follower_id", unique: true
    t.index ["user_id"], name: "index_user_follower_relationships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.binary   "password_hash"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
