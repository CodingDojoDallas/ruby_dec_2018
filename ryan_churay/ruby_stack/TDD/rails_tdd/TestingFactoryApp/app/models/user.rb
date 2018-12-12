class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :presence => true
  validates :email, presence: true, uniqueness: true, format: {with: EMAIL_REGEX}
end
