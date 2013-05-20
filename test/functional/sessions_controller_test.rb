require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def setup
    @user = users(:john)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test 'should successfully log in' do
    post :create, :email => @user.email, :password => 'password'
    assert_redirected_to root_url
    assert_equal @user.id, session[:user_id]
  end

  test 'should not log in with invalid password' do
    post :create, :email => @user.email, :password => 'invalid'
    assert_nil session[:user_id]
  end

  test 'should log out' do
    session[:user_id] = @user.id
    delete :destroy
    assert_redirected_to new_session_path
    assert_nil session[:user_id]
  end

end
