class Message < ApplicationRecord
  belongs_to :user
  validates :message, presence: true, length: { minumum: 10 }
end
