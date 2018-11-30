class User < ApplicationRecord
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :link_friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :link_friends, :through => :link_friendships, :source => :user
end
