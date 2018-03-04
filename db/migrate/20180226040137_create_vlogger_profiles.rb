class CreateVloggerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :vlogger_profiles do |t|
      t.integer :user_id
      t.string :profile_picture_id
      t.string :facebook_profile_url
      t.string :twitter_profile_url
      t.string :website_url
      t.text :profile_message

      t.timestamps
    end
  end
end
