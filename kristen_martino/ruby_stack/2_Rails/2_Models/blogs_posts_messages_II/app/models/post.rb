class Post < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  has_many :messages, dependent: :destroy
  validates :title, presence: true, length: {in: 2..255}
  validates :content, :user, :blog, presence: true
end
