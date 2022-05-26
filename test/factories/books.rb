require 'faker'

FactoryBot.define do
  factory :book do
    sequence(:name, 1) { |number| "#{Faker::Book.title.gsub(/[^A-Za-z\s]/, '')[0,25]} #{number}" }

    description { Faker::Lorem.paragraph_by_chars(number: 30) }
    price { Faker::Commerce.price }
    active { Faker::Boolean.boolean }
    published_at { Faker::Time.backward(days: 14, period: :evening) }
    number_of_pages { Faker::Number.between(from: 1, to: 500) }

    before(:build) do |book|
      book.category = FactoryBot.build(:category)
      book.author = FactoryBot.build(:author)
    end
  end
end
