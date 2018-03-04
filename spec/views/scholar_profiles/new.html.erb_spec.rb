require 'rails_helper'

RSpec.describe "vlogger_profiles/new", type: :view do
  before(:each) do
    assign(:vlogger_profile, VloggerProfile.new())
  end

  it "renders new vlogger_profile form" do
    render

    assert_select "form[action=?][method=?]", vlogger_profiles_path, "post" do
    end
  end
end
