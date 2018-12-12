class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :users_m, through: :messages, source: :user
  has_many :comments, as: :comment

  validates :title, presence: true, length: {minimum: 6}
  validates :content, presence: true
end
