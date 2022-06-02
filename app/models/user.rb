class User < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :first_name, presence: true, length: {minimum: 3}
  validates :last_name, presence: true, length: {minimum: 3}
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "It must be a valid email" }
end
