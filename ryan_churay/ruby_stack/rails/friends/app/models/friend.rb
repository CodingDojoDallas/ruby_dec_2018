class Friend < ActiveRecord::Base
  belongs_to :user
  belongs_to :pal, class_name: "User", foreign_key: "pal_id"
  # belongs_to :users, class_name: "User", foreign_key: "user_id"
end
