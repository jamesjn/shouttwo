require 'spec_helper'

describe "Landing" do
  describe "GET /landing" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/'
      page.should have_content("This is an app")
    end
  end
end
