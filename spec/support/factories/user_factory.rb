FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@suggestatron.com" }
    password "password"
    password_confirmation "password"
  end
end
