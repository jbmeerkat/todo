class Story::Comment < ActiveRecord::Base
  belongs_to :story
  belongs_to :author, :class_name => 'User'

  attr_accessible :author, :body, :story

  validates :author, :presence => true
  validates :body, :presence => true
  validates :story, :presence => true
end
