require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => {:email => 'user@example.com', :password => 'password', :password_confirmation => 'password'}
    end
  end

end
