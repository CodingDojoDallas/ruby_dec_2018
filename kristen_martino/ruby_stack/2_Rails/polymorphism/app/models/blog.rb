class Blog < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :owners
  has_many :users, through: :posts
  # Doing it this way would have been easier:
  # has_many :blog_users, through: :posts
  # has_many :blog_owners, through: :owners
  has_many :comments, as: :commentable
  validates :name, presence: true, length: {in: 2..255}
  validates :description, presence: true
end
