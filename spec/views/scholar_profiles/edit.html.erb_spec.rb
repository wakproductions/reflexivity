require 'rails_helper'

RSpec.describe "vlogger_profiles/edit", type: :view do
  before(:each) do
    @vlogger_profile = assign(:vlogger_profile, VloggerProfile.create!())
  end

  it "renders the edit vlogger_profile form" do
    render

    assert_select "form[action=?][method=?]", vlogger_profile_path(@vlogger_profile), "post" do
    end
  end
end
