require 'spec_helper'

describe "Shouts" do
  describe "GET /shouts" do
    it "displays the shout form" do
      visit new_shout_path
      page.should have_content("Picture")
    end
  end

  describe "POST /shouts" do
    it "creates a new shout" do
      visit new_shout_path
        fill_in "shout_title", :with => "Jeremy Lin vs Kobe Bryant"
        fill_in "shout_media1_content", :with => "http://www.jamesjn.com/shouttwo/assets/mock/lin.jpg"
        fill_in "shout_media2_content", :with => "picture"
        fill_in "shout_tags", :with  => "no tags"
        click_button "Create"
        page.should have_content("Jeremy")
    end
  end
end
