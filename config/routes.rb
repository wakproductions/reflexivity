require './lib/load_customizations_helper'

Rails.application.routes.draw do
  devise_for :users

  LoadCustomizationsHelper.engine_names.each do |engine|
    namespace = engine.camelcase
    mount "#{namespace}::Engine".constantize => "#{namespace}::MOUNTED_PATH".constantize
  end

  mount ReflexivityPosts::Engine => '/'
end
