class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, class_name: "User", foreign_key: "friend_id"
  #belongs_to :friended_by, class_name: "User", foreign_key: "user_id"
end
