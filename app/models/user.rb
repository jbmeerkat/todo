class User < ActiveRecord::Base
  has_many :stories

  attr_accessible :email, :password, :password_confirmation

  has_secure_password
  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :password, :presence => true, :on => :create
end
