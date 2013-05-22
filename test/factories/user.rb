FactoryGirl.define do
  factory :user do
    email
    password 'password'
    password_confirmation { |u| u.password }
  end
end