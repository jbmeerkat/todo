class Web::Stories::CommentsController < Web::Stories::ApplicationController

  def create
    @comment = NewStoryCommentType.new params[:comment]
    @comment.story = current_story
    @comment.author = current_user
    if @comment.save
      redirect_to current_story, :notice => t('comment.created')
    else
      redirect_to current_story
    end
  end

end