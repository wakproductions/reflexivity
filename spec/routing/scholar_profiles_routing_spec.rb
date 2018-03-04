require "rails_helper"

RSpec.describe VloggerProfilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vlogger_profiles").to route_to("vlogger_profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/vlogger_profiles/new").to route_to("vlogger_profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/vlogger_profiles/1").to route_to("vlogger_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vlogger_profiles/1/edit").to route_to("vlogger_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vlogger_profiles").to route_to("vlogger_profiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vlogger_profiles/1").to route_to("vlogger_profiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vlogger_profiles/1").to route_to("vlogger_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vlogger_profiles/1").to route_to("vlogger_profiles#destroy", :id => "1")
    end

  end
end
