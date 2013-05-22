class SessionsController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:new, :create]

  def new
  end

  def create
    user = User.find_by_email params[:email]
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_to root_url, :notice => t('authorization.signed_in')
    else
      flash.now.alert = t('authorization.invalid_credentials')
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to new_session_path
  end
end
