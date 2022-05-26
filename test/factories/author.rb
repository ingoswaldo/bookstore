require 'faker'

FactoryBot.define do
  factory :author do
    sequence(:name, 1) { |number| "#{Faker::Name.name} ##{number}" }
  end
end
