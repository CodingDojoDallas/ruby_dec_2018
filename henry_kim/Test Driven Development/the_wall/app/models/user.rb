class User < ActiveRecord::Base
  validates :username, :presence => true, length: {minimum:6}
  has_many :messages
end
