FactoryBot.define do
  factory :topic do
    name { "Topic-1" }
    description { Faker::Lorem.paragraph }
  end
end
