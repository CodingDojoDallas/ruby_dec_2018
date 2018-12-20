class User < ActiveRecord::Base
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: true }, format: { with: EMAIL_REGEX }
  validates :first_name,:last_name, :city, :state, presence: true
  validates :password, length: { minimum: 8}, on: :create

  has_many :events
  has_many :rsvps, dependent: :destroy
  has_many :events_rsvped, through: :rsvps, source: :event
  has_many :comments
  has_many :event_comments, through: :comments, source: :event
end
