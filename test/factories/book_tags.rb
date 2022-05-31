require 'faker'

FactoryBot.define do
  factory :book_tag do
    after(:build) do |book_tag|
      book_tag.book = FactoryBot.build(:book)
      book_tag.tag = FactoryBot.build(:tag)
    end
  end
end
