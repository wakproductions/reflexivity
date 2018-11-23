ReflexivityPosts::Engine.routes.draw do
  resources :videos, only: [:index]
  get '/videos/:permalink_id', to: 'videos#show', as: 'video'

  get '/auth/:provider/callback', to: 'sessions#create', as: 'oauth_callback'
  # get '/auth/:provider/access_token', to: 'sessions#access_token', as: 'oauth_access_token'
end
