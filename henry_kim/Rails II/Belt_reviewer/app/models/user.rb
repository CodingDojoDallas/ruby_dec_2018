class User < ActiveRecord::Base
  has_secure_password
  has_many :events, dependent: :destroy
  has_many :attendance, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :events_hosted, class_name: 'Event'
  has_many :events_attending, through: :attendance, source: :event

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :first_name, :last_name, :email, :city, :state, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
  validates :password, length: { minimum: 8 }
  validates :state, length: { is: 2 }
  before_save :downcase_fields, :upcase_fields

  private
    def downcase_fields
      self.email.downcase!
    end

    def upcase_fields
      self.state.upcase!
    end
end
