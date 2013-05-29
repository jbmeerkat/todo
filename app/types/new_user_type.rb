class NewUserType < User
  include BaseType

  attr_accessible :email, :password, :password_confirmation
  validates :password, :presence => true
end