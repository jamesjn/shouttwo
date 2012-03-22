class LandingController < ApplicationController
  def index
    @sort = params[:sort]
    if @sort == "views"
      @shouts = Shout.limit(5).order("views desc")
    elsif @sort == "favorites"
      @shouts = Shout.limit(5).order("num_favorites desc") 
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

  def search
    @user = current_user
    if current_user
      @favorite_shout_ids = current_user.favorites.collect(&:shout_id)
    else
      @favorite_shout_ids = nil
    end
    @search_term = params[:query]
    @shouts = Shout.search @search_term
  end

end
