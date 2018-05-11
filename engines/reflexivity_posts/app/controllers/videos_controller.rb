require "#{ReflexivityPosts::Engine.root}/app/helpers/application_helper"

class VideosController < ApplicationController

  # GET /videos
  def index
    @videos = Post.videos
  end

  # GET /video/:permalink_id
  def show
    # TODO filter to exclude hidden posts

    @presenter = Videos::ShowPresenter.new(Post.find_by(permalink_id: params[:permalink_id]).increment_view_count)
  end

  private
end