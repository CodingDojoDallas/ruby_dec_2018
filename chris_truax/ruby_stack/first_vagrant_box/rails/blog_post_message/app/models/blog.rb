class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    has_many :owners
    has_many :o_users, through: :owners, source: :user
    has_many :p_users, through: :posts, source: :user
    has_many :comments, as: :imageable
    validates :name, :description, presence: true
end
