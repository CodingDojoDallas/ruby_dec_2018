class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  validates :author, :message, presence: true
end
