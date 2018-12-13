class User < ActiveRecord::Base
  has_many :blogs_o, through: :owners, source: :blog
  has_many :blogs_p, through: :posts, source: :blog
  has_many :messages
  has_many :posts
  has_many :owners
  has_many :post_messages, through: :messages, source: :post
  has_many :comments, as: :comment
end
