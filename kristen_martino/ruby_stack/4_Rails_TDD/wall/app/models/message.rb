class Message < ActiveRecord::Base
  belongs_to :user
  validates :message, presence: true, length: {minimum: 11}
  validates :user, presence: true
  scope :isblank, conditions: {message: nil}
end
