class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :book_tags
  has_many :tags, through: :book_tags, dependent: :destroy

  validates :name, presence: true, length: {minimum: 3, maximum: 30},
            format: { with: /\A[\w\d\s]*\z/, message: "Special characters are not allowed" }
  validates :price, presence: true, numericality: true
  validates :number_of_pages, presence: true, numericality: { only_integer: true }
  validates :published_at, presence: true

  scope :active, -> { where(active: true) }
end
