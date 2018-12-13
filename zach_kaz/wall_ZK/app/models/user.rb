class User < ActiveRecord::Base
    has_many:posts
    has_many:comments
    validates :username, presence:true 
    validates :username, uniqueness:true
    validates :username, length: {minimum: 5}
end
