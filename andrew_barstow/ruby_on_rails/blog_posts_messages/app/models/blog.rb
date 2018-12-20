class Blog < ApplicationRecord
    has_many :posts
    has_many :owners
    has_many :users, through: :owners
    validates :name, presence: true
    validates :description, presence: true

    before_destroy :destroy_posts

    def destroy_posts
        self.posts.destroy_all
    end

end