Rails.application.routes.draw do
  devise_for :users

  # get 'vlog/:vlogger_profile_friendly_username/videos', to: 'vlogger_profiles#videos_index', as: :vlogger_profile_videos
  # get 'vlog/:vlogger_profile_friendly_username', to: 'vlogger_profiles#show', as: :vlogger_profile

  resources :videos, only: [:index, :show]

  root 'home#index'
end
