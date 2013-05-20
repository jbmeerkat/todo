class Story < ActiveRecord::Base
  belongs_to :user

  attr_accessible :name, :description

  validates :name, :presence => true
  validates :user_id, :presence => true, :on => :create
end
