class Dojo < ApplicationRecord
    has_many :ninjas
    validates :name, presence: true
    validats :city, presence: true
    validates :state, presence: true, length: 2
end
