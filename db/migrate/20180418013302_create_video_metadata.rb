class CreateVideoMetadata < ActiveRecord::Migration[5.1]
  def change
    create_table :video_metadata do |t|
      t.integer "uploader_id"
      t.string "permalink_id"
      t.string "title"
      t.date "upload_date"
      t.date "original_publication_date"
      t.text "attributions"   # Markdown

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

      t.index ["permalink_id"], name: "index_video_metadata_permalink_id_unique", unique: true
    end
  end
end
