require 'test_helper'

class Stories::CommentsControllerTest < ActionController::TestCase

  setup do
    user = create :user
    @story = create :story
    @comment = build 'story/comment', :story => @story

    sign_in user
  end

  test 'should create comment' do
    post :create, :story_id => @story, :comment => @comment.attributes
    assert_response :redirect

    comment = Story::Comment.find_by_story_id @story
    assert comment
  end

end