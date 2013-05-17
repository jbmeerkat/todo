require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  def setup
    @story = Story.new(:name => 'Fake story', :description => 'Nothing to say')
    @story.user = users(:john)
  end

  test 'should create valid story' do
    assert @story.save
  end

  test 'should not create story without name' do
    @story.name = ''
    assert !@story.save
  end

  test 'should not create story without user' do
    @story.user = nil
    assert !@story.save
  end
end
