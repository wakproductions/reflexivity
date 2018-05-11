  class Post < ApplicationRecord
    self.inheritance_column = :disabled
    belongs_to :video_metadata

    # created_at's probably not the best secondary means of ordering, but is a good enough band aid for now
    scope :videos, -> { where(type: 'video').order(publish_date: :desc, created_at: :desc) }

    def increment_view_count
      update(view_count: view_count + 1)
      return self # so we can chain
    end
  end
