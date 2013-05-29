class StoriesController < ApplicationController
  def index
    @q = Story.search(params[:q])
    @stories = @q.result(:distinct => true).includes(:owner, :performer)
  end

  def show
    @story = Story.includes(:owner, :performer).find params[:id]
    @comment = Story::Comment.new
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new params[:story]
    @story.owner = current_user
    if @story.save
      redirect_to stories_path, :notice => t('story.created')
    else
      render :new
    end
  end

  def edit
    @story = Story.includes(:performer).find params[:id]
  end

  def update
    @story = Story.find params[:id]
    if @story.update_attributes params[:story]
      redirect_to @story
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find params[:id]
    @story.destroy
    redirect_to stories_path
  end

end
