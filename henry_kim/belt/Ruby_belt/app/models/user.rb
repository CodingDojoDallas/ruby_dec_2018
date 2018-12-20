class User < ActiveRecord::Base
  has_secure_password
  has_many :organizations
  has_many :attendance, dependent: :destroy
  has_many :group_joined, through: :attendance, source: :organization
  has_many :organization_host, class_name: 'Organization'

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :first_name, :last_name, :email, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
  validates :password, length: { minimum: 8 }
  before_save :downcase_fields

    private
      def downcase_fields
        self.email.downcase!
      end
end
