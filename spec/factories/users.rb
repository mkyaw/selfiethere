FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "factorytest#{n}@email.com"
    end
    password "password"
    password_confirmation "password"
  end
end