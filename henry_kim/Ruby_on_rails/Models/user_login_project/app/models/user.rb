class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 150}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  def messages
    User.find_by_sql("SELECT * FROM messages WHERE messages.user_id = #{self.id}")
  end

  has_one :address

  # creating a custom instance method. self refers to the ActiveRecord object
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # creating a custom class method. self refers to the User model
  def self.average_age
      self.sum(:age) / self.count
  end

# this callback will run before saving on create and update
before_save :downcase_email

# this callback will run after creating a new user
after_create :successfully_created

# this callback will run after updating an existing user
after_update :successfully_updated

private
    def downcase_email
      self.email.downcase!
    end

    def successfully_created
      puts "Successfully created a new user"
    end
    def successfully_updated
      puts "Successfully updated a existing user"
    end

    def default_age
      self.age = 0 unless self.age?
    end

end
