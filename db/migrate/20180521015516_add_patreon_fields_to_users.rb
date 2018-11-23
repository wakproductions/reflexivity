class AddPatreonFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :patreon_avatar_thumb_url, :string
  end
end
