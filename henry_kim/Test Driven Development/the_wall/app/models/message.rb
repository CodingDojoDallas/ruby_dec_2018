class Message < ActiveRecord::Base
  validates :content, presence: true, length: {minimum:11}
  belongs_to :user
  validates_presence_of :user
end
