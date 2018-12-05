class Blog < ActiveRecord::Base
  has_many :owners
  has_many :posts
  has_many :users, through: :owners

  validates :name, :description, presence: true
  validates :description, presence: true
end
