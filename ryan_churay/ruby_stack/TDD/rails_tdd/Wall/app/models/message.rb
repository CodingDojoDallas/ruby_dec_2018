class Message < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true, length: {minimum: 11}
  validates :user, presence: true
end
