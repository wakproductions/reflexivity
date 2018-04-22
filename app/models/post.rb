class Post < ApplicationRecord
  self.inheritance_column = :disabled
  belongs_to :video_metadata

  scope :videos, -> { where(type: 'video').order(publish_date: :desc) }

  def increment_view_count
    update(view_count: view_count + 1)
    return self # so we can chain
  end
end
