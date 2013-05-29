class UserSignInType
  include BaseType
  include ActiveModel::Validations
  include ActiveModel::Conversion
  include Virtus

  attribute :email, String
  attribute :password, String

  validates :email, :presence => true
  validates :password, :presence => true

  validates_each :email do |record, attr, value|
    user = record.user
    unless user.try(:authenticate, record.password)
      record.errors.add attr, :invalid_credentials
    end
  end

  def user
    @user ||= User.find_by_email email.mb_chars.downcase
  end

  def persisted?
    false
  end

end