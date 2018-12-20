class User < ActiveRecord::Base
  has_many :friends
  has_many :friendeds, class_name: "Friend", foreign_key: "pal_id"
  has_many :pals, through: :friends, source: :pal
  # has_many :users, through: :friends, source: :friended
  has_many :pals_by, through: :friendeds, source: :user

end
