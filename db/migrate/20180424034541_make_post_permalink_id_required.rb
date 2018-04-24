class MakePostPermalinkIdRequired < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :permalink_id, :string, null: false
  end
end
