class User < ActiveRecord::Base
    validates :first_name, :last_name, :age, :email, presence: true
    validates :first_name, :last_name, length: {minimum: 2}
    validates :age, numericality: { only_integer: true, greater_than:9, less_than:150}
end
