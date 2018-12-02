class User < ActiveRecord::Base
    has_many :friendships
    #has_many :friends, class_name: "Friendship", foreign_key: "user_id"
    has_many :friendeds, class_name: "Friendship", foreign_key: "friend_id"
    has_many :friends, through: :friendships, source: :friend
    has_many :friended_bys, through: :friendeds, source: :user
end
