class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :request_books, dependent: :destroy

  validates :first_name, presence: true, length: {minimum: 3}
  validates :last_name, presence: true, length: {minimum: 3}
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "It must be a valid email" }

  def full_name
    [first_name, last_name].join(' ')
  end
end
