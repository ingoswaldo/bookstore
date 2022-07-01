class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :message, presence: true, length: {minimum: 3}

  scope :approved, -> { where(approved: true) }
end
