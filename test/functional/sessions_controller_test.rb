require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  setup do
    @user = create :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test 'should successfully log in' do
    post :create, :user => { :email => @user.email, :password => 'password' }
    assert_response :redirect

    assert signed_in?
  end

  test 'should log out' do
    sign_in @user

    delete :destroy
    assert_response :redirect

    assert !signed_in?
  end

end
