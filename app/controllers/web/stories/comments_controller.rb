class Web::Stories::CommentsController < ApplicationController

  def create
    @story = Story.find params[:story_id]
    @comment = @story.comments.build params[:comment]
    @comment.author = current_user
    if @comment.save
      redirect_to @story, :notice => t('comment.created')
    else
      redirect_to @story
    end
  end

end