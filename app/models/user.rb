class User < ApplicationRecord
  validates :first_name, presence: true, length: {minimum: 3}
  validates :last_name, presence: true, length: {minimum: 3}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "It must be a valid email" }
end