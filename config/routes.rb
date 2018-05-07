Rails.application.routes.draw do
  devise_for :users

  # get 'vlog/:vlogger_profile_friendly_username/videos', to: 'vlogger_profiles#videos_index', as: :vlogger_profile_videos
  # get 'vlog/:vlogger_profile_friendly_username', to: 'vlogger_profiles#show', as: :vlogger_profile

  resources :videos, only: [:index]
  get '/videos/:permalink_id', to: 'videos#show', as: 'video'

  Dir.entries(File.join(Dir.pwd, 'engines-customization')).reject {|name| name =~ %r{\.{1,2}}} .each do |engine|
    namespace = engine.camelcase
    mount "#{namespace}::Engine".constantize => "#{namespace}::MOUNTED_PATH".constantize
  end

  # mount ReflexivityVideos::Engine => 'videos'

  root 'home#index'
end
