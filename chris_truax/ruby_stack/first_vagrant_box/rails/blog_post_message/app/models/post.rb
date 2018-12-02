class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, dependent: :destroy
  has_many :m_users, through: :messages, source: :user
  belongs_to :user
  has_many :comments, as: :imageable
  validates :title, presence: true, length: {minimum: 7}
  validates :content, presence: true
end
