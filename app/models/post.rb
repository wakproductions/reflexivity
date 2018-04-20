class Post < ApplicationRecord
  self.inheritance_column = :disabled
  belongs_to :video_metadata

  scope :videos, -> { where(type: 'video').order(upload_date: :desc) }
end
