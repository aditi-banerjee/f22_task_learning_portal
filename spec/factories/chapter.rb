FactoryBot.define do
  factory :chapter do
    name { "Chapter-1" }
    description { Faker::Lorem.paragraph }
  end
end
