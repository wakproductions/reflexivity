ReflexivityPosts::Engine.routes.draw do
  resources :videos, only: [:index]
  get '/videos/:permalink_id', to: 'videos#show', as: 'video'
end
