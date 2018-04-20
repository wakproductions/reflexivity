class AddIpfsDirectoryPathToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :thumbnail_ipfs_directory_hash_840x470, :string
    add_column :posts, :video_ipfs_directory_hash_480p, :string
  end
end
