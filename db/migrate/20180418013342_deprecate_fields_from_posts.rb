class DeprecateFieldsFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :original_publication_date
    remove_column :posts, :attributions
    remove_column :posts, :video_file_name_480p
    remove_column :posts, :video_ipfs_hash_480p
    remove_column :posts, :thumbnail_file_name_840x470
    remove_column :posts, :thumbnail_ipfs_hash_840x470
    remove_column :posts, :thumbnail_ipfs_directory_hash_840x470
    remove_column :posts, :video_ipfs_directory_hash_480p
  end
end
