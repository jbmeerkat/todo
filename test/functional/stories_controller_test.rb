require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  setup do
    @story = create :story
    @user = @story.user
  end

  test 'should get index for authorized user' do
    sign_in @user
    get :index
    assert_response :success
  end

  test 'should get show for authorized user' do
    sign_in @user
    get :show, :id => @story
    assert_response :success
  end

  # test 'should get new for authorized user' do
  #   sign_in @user
  #   get :new
  #   assert_response :success
  # end

  # test 'should create story for authorized user' do
  #   sign_in @user
  #   assert_difference('Story.count', 1) do
  #     post :create, :story => {:name => 'Task', :description => 'Description'}
  #   end
  #   assert_response :redirect
  # end

  # test 'should get edit for authorized user' do
  #   sign_in @user
  #   get :edit, :id => stories(:sample)
  #   assert_response :success
  # end

  # test 'should update story for authorized user' do
  #   sign_in @user
  #   put :update, :id => stories(:sample), :story => {:name => 'changed!', :description => 'and this too'}
  #   assert_response :redirect
  # end

  # test 'should destroy story for authorized user' do
  #   sign_in @user
  #   assert_difference('Story.count', -1) do
  #     delete :destroy, :id => stories(:sample)
  #   end
  #   assert_response :redirect
  # end
end
