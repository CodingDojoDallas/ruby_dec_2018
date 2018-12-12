class Post < ActiveRecord::Base
  belongs_to :user
  validates :content, length: {minimum:10}
  validates :user, presence:true
  has_many:comments
end
