class Book < ApplicationRecord
  belongs_to :author, required: true

  validates :name, presence: true, length: {minimum: 3, maximum: 30},
            format: { with: /\A[\w\d\s]*\z/, message: "Special characters are not allowed" }
  validates :price, presence: true, numericality: true
  validates :number_of_pages, presence: true, numericality: { only_integer: true }
  validates :published_at, presence: true
end
