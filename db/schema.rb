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

ActiveRecord::Schema.define(version: 20171027214419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.text "bio"
    t.text "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors_videos", id: false, force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "actor_id", null: false
    t.index ["video_id", "actor_id"], name: "index_actors_videos_on_video_id_and_actor_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_videos", id: false, force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "category_id", null: false
    t.index ["video_id", "category_id"], name: "index_categories_videos_on_video_id_and_category_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "url"
    t.string "title"
    t.string "thumbnail"
    t.integer "year"
    t.integer "rating"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
