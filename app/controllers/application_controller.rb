class ApplicationController < ActionController::Base
  include AuthHelper

  protect_from_forgery

  before_filter :authenticate_user!

  private
  helper_method :current_user, :signed_in?

end
