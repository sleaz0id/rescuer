FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    birth_date { Faker::Date.birthday(18, 65) }
    sequence :email do |n| "email#{n}@email.com" end
    password Rails.application.secrets[:user_password]
    password_confirmation Rails.application.secrets[:user_password]
  end
end
