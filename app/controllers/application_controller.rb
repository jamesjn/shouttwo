class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :assign_current_user

  private
  def assign_current_user
    @current_user = current_user
  end
end
