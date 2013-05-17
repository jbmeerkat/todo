class SessionsController < ApplicationController
  skip_before_filter :authenticate_user, :only => [:new, :create]

  def new
  end

  def create
    user = User.find_by_email params[:email]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => t('signed_in')
    else
      flash.now.alert = t('invalid_credentials')
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
end
