class Message < ApplicationRecord
    belongs_to :post
    belongs_to :user
    has_many :comments
    validates :author, presence: true
    validates :message, presence: true, length: { minimum: 15 }
end
