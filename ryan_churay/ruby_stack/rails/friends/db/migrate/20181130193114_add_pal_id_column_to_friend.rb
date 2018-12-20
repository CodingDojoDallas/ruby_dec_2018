class AddPalIdColumnToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :pal_id, :integer
  end
end
