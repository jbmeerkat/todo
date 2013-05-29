class Web::Stories::ApplicationController < Web::ApplicationController
  before_filter :current_story

  private
  def current_story
    @story = Story.find params[:story_id]
  end
end