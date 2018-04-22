module Videos
  class ShowPresenter < PresenterBase

    attr_reader :video_post

    delegate :post_content, :title, :view_count, to: :video_post
    
    def initialize(video_post)
      @video_post = video_post
    end

    def post_date
      if video_metadata.original_publication_date.present?
        "#{video_post.publish_date.strftime(DATE_FORMAT)} (Originally published: #{video_metadata.original_publication_date.strftime(DATE_FORMAT)})"
      else
        "#{video_post.publish_date.strftime(DATE_FORMAT)}"
      end
    end

    def video480p_link
      ipfs_hash_link(video_metadata.video_480p_ipfs_hash)
    end

    def video_poster_link
      ipfs_hash_link(video_metadata.video_poster_480x360_ipfs_hash)
    end

    private

    def video_metadata
      video_post.video_metadata
    end

  end
end