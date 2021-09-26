FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password }
    phone_number { Faker::PhoneNumber.phone_number }
  end
end
