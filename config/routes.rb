require './lib/load_customizations_helper'

Rails.application.routes.draw do
  devise_for :users

  resources :videos, only: [:index]
  get '/videos/:permalink_id', to: 'videos#show', as: 'video'

  # mount Reflexivity::Videos::Engine => '/'

  LoadCustomizationsHelper.engine_names.each do |engine|
    namespace = engine.camelcase
    mount "#{namespace}::Engine".constantize => "#{namespace}::MOUNTED_PATH".constantize
  end

  # mount ReflexivityVideos::Engine => 'videos'

  root 'home#index'
end
