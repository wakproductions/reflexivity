Rails.application.routes.draw do
  devise_for :users

  resources :vlogger_profiles

  root 'home#index'
end
