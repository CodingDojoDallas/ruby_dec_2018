class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, length:{minimum:10}
end
