class User < ApplicationRecord
    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates :email, :presence => true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
