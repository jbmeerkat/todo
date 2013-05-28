class User < ActiveRecord::Base
  has_many :stories, :dependent => :nullify, :foreign_key => 'owner_id'
  has_many :assigned_stories, :dependent => :nullify, :foreign_key => 'performer_id', :class_name => 'Story'

  attr_accessible :email, :password, :password_confirmation

  has_secure_password
  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :password, :presence => true, :on => :create

  def to_s
    email
  end

end
