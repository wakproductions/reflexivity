require 'rails_helper'

RSpec.describe "vlogger_profiles/index", type: :view do
  before(:each) do
    assign(:vlogger_profiles, [
      VloggerProfile.create!(),
      VloggerProfile.create!()
    ])
  end

  it "renders a list of vlogger_profiles" do
    render
  end
end
