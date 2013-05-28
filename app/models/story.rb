class Story < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :performer, :class_name => 'User'

  attr_accessible :name, :description, :state, :owner, :performer

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
