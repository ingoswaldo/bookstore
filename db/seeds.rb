# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |number| Book.create(
  name: "Book #{number + 1}", description: "Description of the book #{number + 1}", number_of_pages: rand(1...200),
  price: rand(0.1..999.99), published_at: Time.now - rand.weeks)
end