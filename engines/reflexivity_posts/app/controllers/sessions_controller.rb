class SessionsController < ApplicationController
  
  def create
    oauth_client = Patreon::OAuth.new(ENV.fetch('PATREON_CLIENT_ID'), ENV.fetch('PATREON_CLIENT_SECRET'))
    tokens = oauth_client.get_tokens(params[:code], PATREON_REDIRECT_URI)

    access_token = tokens['access_token']

    api_client = Patreon::API.new(access_token)
    user_response = api_client.fetch_user()
    binding.pry

    # @user = User.find_or_create_from_auth_hash(auth_hash)
    # self.current_user = @user
    # redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end