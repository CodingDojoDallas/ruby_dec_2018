class User < ActiveRecord::Base
  before_validation :make_email_lowercase
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
  def make_email_lowercase
    self.email = email.downcase
  end
end
