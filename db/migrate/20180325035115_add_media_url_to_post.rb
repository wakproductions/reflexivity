class AddMediaUrlToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :video_file_name_480p, :string
    add_column :posts, :video_ipfs_hash_480p, :string
  end
end
