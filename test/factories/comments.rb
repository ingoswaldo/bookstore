require 'faker'

FactoryBot.define do
  factory :comment do
    message { Faker::Lorem.paragraph_by_chars(number: 30) }
    approved { Faker::Boolean.boolean }

    after(:build) do |comment|
      comment.book = FactoryBot.build(:book)
      comment.user = FactoryBot.build(:user)
    end
  end
end
