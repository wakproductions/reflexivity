class MovePermalinkIdColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :video_metadata, :permalink_id
    add_column :posts, :permalink_id, :string

    add_index :posts, ["permalink_id"], name: "index_posts_permalink_id_unique", unique: true
  end
end
