class User < ApplicationRecord
    has_many :friendships
    has_many :friends, through: :friendships, source: :friend

    has_many :reverse_friendships, foreign_key: :friend_id, class_name: "Friendship"
    has_many :reverse_friends, through: :reverse_friendships, source: :user
end
