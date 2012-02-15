require 'spec_helper'

describe LandingController do

  describe "landing/index" do
    it "renders the landing page" do
      get :index
    end
  end

end
