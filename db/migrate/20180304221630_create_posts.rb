class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :vlogger_profile_id
      t.string :thumbnail_url
      t.string :title
      t.text :post_content
      t.date :upload_date
      t.date :original_publication_date
      t.text :attributions

      t.timestamps
    end
  end
end
