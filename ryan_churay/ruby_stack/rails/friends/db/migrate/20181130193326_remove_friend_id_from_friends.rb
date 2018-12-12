class RemoveFriendIdFromFriends < ActiveRecord::Migration
  def change
    remove_column :friends, :friend_id, :integer
  end
end
