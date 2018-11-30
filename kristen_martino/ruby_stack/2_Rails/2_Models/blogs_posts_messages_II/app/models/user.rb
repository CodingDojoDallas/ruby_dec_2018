class User < ApplicationRecord
  has_many :messages
  has_many :posts
  has_many :owners
  has_many :blogs, through: :owners
  # Doing it this way would have been easier:
  # has_many :blogs_owned, through: :owners
  # has_many :blog_posts, through: :posts
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: {in: 2..255}
  validates :email_address, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
end
