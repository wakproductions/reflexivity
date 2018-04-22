class VideosController < ApplicationController

  # GET /videos
  def index
    @videos = Post.videos
  end

  # GET /video/1
  def show
    # TODO filter to exclude hidden posts
    @presenter = Videos::ShowPresenter.new(Post.find(params[:id]).increment_view_count)
  end

  private
end
