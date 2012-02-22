class ShoutsController < ApplicationController
  respond_to :html

  def show
    @shout = Shout.find(params[:id])
  end

  def create
    shout_params = params[:shout] 
    shout_params[:user_id] = 1
    @shout = Shout.new(params[:shout])
    @shout.save
    respond_with @shout
  end

  def new
    @shout = Shout.new
  end
end
