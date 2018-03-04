require 'rails_helper'

RSpec.describe "vlogger_profiles/show", type: :view do
  before(:each) do
    @vlogger_profile = assign(:vlogger_profile, VloggerProfile.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
