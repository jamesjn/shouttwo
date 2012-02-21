class LandingController < ApplicationController
  def index
    @shouts = Shout.limit(5).order("created_at desc")
  end
end
