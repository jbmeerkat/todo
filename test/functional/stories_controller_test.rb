require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  setup do
    @story = create :story
    @user = create :user
    sign_in @user
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get show' do
    get :show, :id => @story
    assert_response :success
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create story' do
    attrs = attributes_for :story

    post :create, :story => attrs
    assert_response :redirect
  end

  test 'should get edit' do
    get :edit, :id => @story
    assert_response :success
  end

  test 'should update story' do
    attrs = attributes_for :story

    put :update, :id => @story, :story => attrs
    assert_response :redirect
  end

  test 'should destroy story' do
    delete :destroy, :id => @story
    assert_response :redirect
    assert !Story.exists?(@story)
  end
end
