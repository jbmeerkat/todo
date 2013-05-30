class Web::Stories::CommentsController < Web::Stories::ApplicationController

  def create
    @comment = NewStoryCommentType.new params[:story_comment]
    @comment.story = current_story
    @comment.author = current_user
    if @comment.save
      flash_success
    else
      flash_error
    end
    redirect_to current_story
  end

end