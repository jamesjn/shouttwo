class LandingController < ApplicationController
  def index
    @sort = params[:sort]
    if @sort == "views"
      @shouts = Shout.limit(5).order("views desc")
    else
      @shouts = Shout.limit(5).order("created_at desc")
    end
      
    @user = current_user
    if current_user
      @favorite_shout_ids = current_user.favorites.collect(&:shout_id)
    else
      @favorite_shout_ids = nil
    end
  end
end
