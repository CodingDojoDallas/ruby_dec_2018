class Blog < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :users_o, through: :owners, source: :user
  has_many :users_p, through: :posts, source: :user
  has_many :comments, as: :comment
  has_many :owners

  validates :name, :description, presence: true
end
