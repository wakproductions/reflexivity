class AddFieldsToVideoMetadata < ActiveRecord::Migration[5.1]
  def change
    rename_column :video_metadata, :video_filesize, :video_filesize_480p
    add_column :video_metadata, :video_filesize_720p, :string
    add_column :video_metadata, :video_unprocessed_file_name, :string

    rename_column :posts, :upload_date, :publish_date
  end
end
