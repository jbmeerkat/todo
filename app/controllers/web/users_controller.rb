class Web::UsersController < Web::ApplicationController
  skip_before_filter :authenticate_user!, :only => [:new, :create]

  def new
    @user = NewUserType.new
  end

  def create
    @user = NewUserType.new params[:user]
    if @user.save
      redirect_to new_session_path, :notice => t('authorization.signed_up')
    else
      render :new
    end
  end

end
