class AddPostToVideoRelationship < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :type, :string
    add_column :posts, :video_metadata_id, :integer
  end
end
