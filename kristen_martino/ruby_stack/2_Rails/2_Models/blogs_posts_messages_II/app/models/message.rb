class Message < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :author, :message, :user, :post, presence: true
  validates :author, length: {in: 2..255}
  validates :message, length: { minimum: 2 }
end
