class VideosController < ApplicationController

  # GET /videos
  def index
    @videos = Post.videos
  end

  # GET /video/1
  def show
    # TODO filter to exclude hidden posts
    @video_post = Post.find(params[:id])
  end

  private
end
