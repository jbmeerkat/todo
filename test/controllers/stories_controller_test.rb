require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  test 'should get index only for authorized user' do
    session[:user_id] = users(:john).id
    get :index
    assert_response :success
    assert_not_nil assigns(:stories)
  end

  test 'should not get index for guest' do
    get :index
    assert_redirected_to new_session_path
  end

  test 'should get show for authorized user' do
    session[:user_id] = users(:john).id
    get :show, :id => stories(:sample)
    assert_response :success
    assert_not_nil assigns(:story)
  end

  test 'should not get show for guest' do
    get :show, :id => stories(:sample)
    assert_redirected_to new_session_path
  end

  test 'should get new only for authorized user' do
    session[:user_id] = users(:john).id
    get :new
    assert_response :success
    assert_not_nil assigns(:story)
  end

  test 'should not get new for guest' do
    get :new
    assert_redirected_to new_session_path
  end

  test 'should create story only for authorized user' do
    session[:user_id] = users(:john).id
    assert_difference('Story.count', 1) do
      post :create, :story => {:name => 'Task', :description => 'Description'}
    end
    assert_redirected_to stories_path
  end

  test 'should not create story for guest' do
    post :create
    assert_redirected_to new_session_path
  end

  test 'should get edit for authorized user' do
    session[:user_id] = users(:john).id
    get :edit, :id => stories(:sample)
    assert_response :success
    assert_not_nil assigns(:story)
  end

  test 'should not get edit for guest' do
    get :edit, :id => stories(:sample)
    assert_redirected_to new_session_path
  end

  test 'should update story for authorized user' do
    session[:user_id] = users(:john).id
    put :update, :id => stories(:sample), :story => {:name => 'changed!', :description => 'and this too'}
    assert_redirected_to story_path(assigns(:story))
  end

  test 'should not update story for guest' do
    put :update, :id => stories(:sample)
    assert_redirected_to new_session_path
  end

  test 'should destroy story for authorized user' do
    session[:user_id] = users(:john).id
    assert_difference('Story.count', -1) do
      delete :destroy, :id => stories(:sample)
    end
    assert_redirected_to stories_path
  end

  test 'should not destroy story for guest' do
    delete :destroy, :id => stories(:sample)
    assert_redirected_to new_session_path
  end
end
