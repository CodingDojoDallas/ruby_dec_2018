class User < ActiveRecord::Base
  has_secure_password
  has_many :secrets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
  validates :name, :email, presence:true
  validates :email, uniqueness:true
  before_save :lowercaseit
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create


  def lowercaseit
    self.email.downcase!
  end
end
