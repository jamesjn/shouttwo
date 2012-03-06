class FavoritesController < ApplicationController
  def create
    Favorite.create({:user_id => current_user.id, :shout_id => params[:shout_id]})
    shout = Shout.find(params[:shout_id])
    shout.increment!(:num_favorites)
    render :nothing => true
  end

  def destroy
    Favorite.destroy_all({:user_id => current_user.id, :shout_id => params[:id]})
    shout = Shout.find(params[:id])
    shout.decrement!(:num_favorites)
    render :nothing => true
  end

  def index 
    shout_ids = Favorite.where(:user_id => current_user.id).map(&:shout_id)
    @shouts = Shout.where(:id => shout_ids)
  end
end
