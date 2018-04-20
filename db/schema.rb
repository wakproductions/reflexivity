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

ActiveRecord::Schema.define(version: 20180418023308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.integer "vlogger_profile_id"
    t.string "thumbnail_url"
    t.string "title"
    t.text "post_content"
    t.date "upload_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.integer "video_metadata_id"
    t.string "permalink_id"
    t.index ["permalink_id"], name: "index_posts_permalink_id_unique", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_metadata", force: :cascade do |t|
    t.integer "uploader_id"
    t.string "title"
    t.date "upload_date"
    t.date "original_publication_date"
    t.text "attributions"
    t.string "video_poster_480x360_file_name"
    t.string "video_480p_file_name"
    t.string "video_720p_file_name"
    t.string "video_poster_480x360_ipfs_hash"
    t.string "video_480p_ipfs_hash"
    t.string "video_720p_ipfs_hash"
    t.string "video_duration"
    t.string "video_filesize"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vlogger_profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "friendly_username"
    t.string "vlog_name"
    t.string "profile_picture_id"
    t.string "facebook_profile_url"
    t.string "twitter_profile_url"
    t.string "website_url"
    t.string "short_description"
    t.text "about_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
