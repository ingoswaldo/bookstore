require 'faker'

FactoryBot.define do
  factory :tag do
    sequence(:name, 1) { |number| "#{Faker::Books::CultureSeries.civ} ##{number}" }
  end
end
