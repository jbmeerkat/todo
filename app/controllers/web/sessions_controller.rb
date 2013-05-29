class Web::SessionsController < Web::ApplicationController
  skip_before_filter :authenticate_user!, :only => [:new, :create]

  def new
    @type = UserSignInType.new
  end

  def create
    @type = UserSignInType.new params[:user_sign_in_type]
    if @type.valid?
      user = @type.user
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
