class ShoutsController < ApplicationController
  include ShoutsHelper
  before_filter :authenticate_user!, :only => [:create, :new]
  before_filter :check_username, :only => [:create, :new]
  respond_to :html

  def show
    @shout = Shout.find(params[:id])
    view = View.where(:session_id => request.session_options[:id], :shout_id => params[:id])
    if view.empty?
      View.create!(:session_id => request.session_options[:id], :shout_id => params[:id])
     end 
    if current_user
      @favorite_shout_ids = current_user.favorites.collect(&:shout_id)
    else
      @favorite_shout_ids = nil
    end
  end

  def create
    shout_params = params[:shout] 
    shout_params[:user_id] = current_user.id
    @shout = Shout.new(params[:shout])
    @shout.save
    respond_with @shout
  end

  def new
    @shout = Shout.new
  end

  def edit
  end

  def mine
    @shouts = current_user.shouts
    @mine = true
  end

  private

  def check_username
    redirect_to :edit_settings unless current_user.username 
  end
end
