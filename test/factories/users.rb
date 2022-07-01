require 'faker'

FactoryBot.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    birthday {Faker::Date.birthday(min_age: 18, max_age: 120)}

    sequence(:email, 1) { |number| Faker::Internet.email(name: "#{first_name}_#{last_name}_#{number}") }
  end
end
