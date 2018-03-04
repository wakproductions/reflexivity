class VloggerProfile < ApplicationRecord
  belongs_to :user

  def name
    "#{user.first_name} #{user.last_name}"
  end
end
