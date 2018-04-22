class HomeController < ApplicationController
  def index
    @videos = Post.videos.first(3)
    render(:index, layout: 'landing')
  end
end
