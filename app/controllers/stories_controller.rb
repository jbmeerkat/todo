class StoriesController < ApplicationController
  def index
    @stories = Story.order('created_at DESC')
  end

  def show
    @story = Story.find params[:id]
  end

  def new
    @story = current_user.stories.build
  end

  def create
    @story = Story.new story_params
    @story.user = current_user
    if @story.save
      redirect_to stories_path, :notice => t('story_created')
    else
      render :new
    end
  end

  def edit
    @story = Story.find params[:id]
  end

  def update
    @story = Story.find params[:id]
    if @story.update_attributes story_params
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

  private
  def story_params
    params.require(:story).permit(:name, :description)
  end

end
