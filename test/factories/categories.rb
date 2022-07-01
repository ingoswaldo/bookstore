require 'faker'

FactoryBot.define do
  factory :category do
    sequence(:name, 1) { |number| "#{Faker::Book.genre} ##{number}" }
  end
end
