class User < ActiveRecord::Base
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: true }, format: { with: EMAIL_REGEX }
  validates :name, presence: true
  before_validation :email_lowercase

  private
    def email_lowercase
      self.email = email.downcase
    end

end
