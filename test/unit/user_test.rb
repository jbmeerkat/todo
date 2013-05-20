require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(:email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
  end

  test 'should not create user with empty email' do
    @user.email = ''
    assert !@user.save
  end

  test 'should not create user with not unique email' do
    @user.email = users(:john).email
    assert !@user.save
  end
end
