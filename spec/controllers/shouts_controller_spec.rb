require 'spec_helper'

describe ShoutsController do

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', {:id => 1}
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create', {:shout => {:title => "Jeremy Lin vs Kobe Bryant", 
          :user_id => 1, 
          :media1_type => "picture", 
          :media1_content => "http://www.jamesjn.com/shouttwo/assets/mock/lin.jpg", 
          :media2_type => "picture", 
          :media2_content => "http://www.jamesjn.com/shouttwo/assets/mock/kobe.jpg", 
          :tags => "no tags"}}
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    it "should display the new view" do
      get 'new'
      response.should render_template('new')
    end
  end

end
