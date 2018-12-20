class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :friend_id

      t.timestamps null: false
    end
  end
end
