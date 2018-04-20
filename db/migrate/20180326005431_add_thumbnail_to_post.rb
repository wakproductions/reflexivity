class AddThumbnailToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :thumbnail_file_name_840x470, :string
    add_column :posts, :thumbnail_ipfs_hash_840x470, :string
  end
end
