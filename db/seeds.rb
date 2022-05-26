# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot_rails'

include FactoryBot::Syntax::Methods

def build_and_save_model(model)
  new_model = build(model)
  yield new_model if block_given?
  new_model.save!
end

10.times do
  create :category
  create :author
  create :tag
end

100.times do
  build_and_save_model(:book) do |book|
    book.category = Category.all.sample
    book.author = Author.all.sample
  end

  build_and_save_model(:book_tag) do |book_tag|
    book_sample = -> { Book.all.sample }
    tag_sample = -> { Tag.all.sample }
    book = book_sample.call
    tag = tag_sample.call

    while BookTag.all.where(book_id: book.id, tag_id: tag.id).size > 0
      book = book_sample.call
      tag = tag_sample.call
    end

    book_tag.book = book
    book_tag.tag = tag
  end
end