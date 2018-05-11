class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout LoadCustomizationsHelper.layout_path
end
