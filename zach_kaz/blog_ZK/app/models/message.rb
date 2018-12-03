class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, :content, presence:true
  validates :content, length:{minimum:15}
end