class Organization < ActiveRecord::Base
  belongs_to :user
  has_many :users_attending, through: :attendance, source: :user
  has_many :attendance, dependent: :destroy

  validates :name, :description, presence: true
  validates :name, length: { minimum: 5 }
  validates :description, length: { minimum: 10 }
end
