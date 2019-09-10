FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author_name { Faker::Book.author }
    language { "English"}
    category { Faker::Book.genre }
  end
end