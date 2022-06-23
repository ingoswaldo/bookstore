class RequestBook < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: {minimum: 3, maximum: 30},
            format: { with: /\A[\w\d\s]*\z/, message: "Special characters are not allowed" }
end
