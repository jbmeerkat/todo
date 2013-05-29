require 'test_helper'

class Web::Stories::CommentsControllerTest < ActionController::TestCase

  setup do
    user = create :user
    @story = create :story
    @comment = build 'story/comment', :story => @story

    sign_in user
  end

  test 'should create comment' do
    post :create, :story_id => @story, :story_comment => @comment.attributes
    assert_response :redirect

    comment = @story.comments.find_by_body @comment.body
    assert comment
  end

end