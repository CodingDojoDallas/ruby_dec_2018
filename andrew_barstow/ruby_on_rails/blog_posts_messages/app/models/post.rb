class Post < ApplicationRecord
    belongs_to :blog
    belongs_to :user
    has_many :messages
    has_many :comments
    validates :title, presence: true, length: { minimum: 7 }
    validates :content, presence: true
end
