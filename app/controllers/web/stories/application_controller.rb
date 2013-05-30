class Web::Stories::ApplicationController < Web::ApplicationController

  private
  def current_story
    @story = Story.find params[:story_id]
  end
end