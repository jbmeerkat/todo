class Story < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :performer, :class_name => 'User'
  has_many :comments, :dependent => :destroy

  attr_accessible :name, :description, :state_event, :owner, :performer, :owner_id, :performer_id
  accepts_nested_attributes_for :comments

  validates :name, :presence => true

  state_machine :initial => :new do

    event :start do
      transition [:new, :rejected] => :started
    end

    event :finish do
      transition all => :finished
    end

    event :accept do
      transition :finished => :accepted
    end

    event :reject do
      transition all => :rejected
    end

  end

end
