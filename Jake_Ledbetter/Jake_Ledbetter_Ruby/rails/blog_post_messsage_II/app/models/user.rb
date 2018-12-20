class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	has_many :messages, dependent: :destroy
	has_many :owners, dependent: :destroy
	has_many :blogs, :through => :owners
	has_many :post, :through => :blogs

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence:true, length: { minimum: 2 }
	validates :email, presence:true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	before_save do 
		self.email.downcase!
	end

end
