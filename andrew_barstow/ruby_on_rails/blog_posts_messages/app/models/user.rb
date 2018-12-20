class User < ApplicationRecord
  has_many :messages
  has_many :posts
  has_many :owners
  has_many :comments
  has_many :blogs_owned, through: :owners, source: :blog
  has_many :blogs, through: :posts
end
