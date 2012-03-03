class ShoutsController < ApplicationController
  include ShoutsHelper
  before_filter :authenticate_user!, :only => [:create, :new]
  before_filter :check_username, :only => [:create, :new]
  respond_to :html

  def show
    @shout = Shout.find(params[:id])
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

  private

  def check_username
    redirect_to :edit_settings unless current_user.username 
  end
end
