class Tag < ApplicationRecord
  has_many :books_tags
  has_many :books, through: :book_tags, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
end
