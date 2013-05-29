class User < ActiveRecord::Base
  has_many :stories, :dependent => :nullify, :foreign_key => 'owner_id'
  has_many :assigned_stories, :dependent => :nullify, :foreign_key => 'performer_id', :class_name => 'Story'
  has_many :comments, :dependent => :destroy

  has_secure_password
  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }

  def to_s
    email
  end

end
