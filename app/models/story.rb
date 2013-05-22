class Story < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :performer, :class_name => 'User'

  attr_accessible :name, :description, :owner_id, :performer_id

  validates :name, :presence => true
end
