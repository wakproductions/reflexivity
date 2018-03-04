require 'rails_helper'

RSpec.describe "VloggerProfiles", type: :request do
  describe "GET /vlogger_profiles" do
    it "works! (now write some real specs)" do
      get vlogger_profiles_path
      expect(response).to have_http_status(200)
    end
  end
end
