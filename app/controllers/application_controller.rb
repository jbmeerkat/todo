class ApplicationController < ActionController::Base
  include AuthHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery

  before_filter :authenticate_user!

  private

  helper_method :current_user, :signed_in?
end
