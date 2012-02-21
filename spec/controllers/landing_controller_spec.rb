require 'spec_helper'

describe LandingController do

  describe "landing/index" do

    it "renders the landing page" do
      get :index
      response.should be_success
    end

    it "sets @shouts" do
      get :index
      assigns(:shouts).should_not be_nil
    end

    it "should render the index page" do
      get :index
      response.should render_template("index")
    end

  end

end
