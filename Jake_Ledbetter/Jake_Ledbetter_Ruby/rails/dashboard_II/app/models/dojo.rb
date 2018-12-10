class Dojo < ActiveRecord::Base
	validates :branch, :city, :street, presence: true, length: { minimum: 3 }
	validates :state, presence: true, length: { is: 2 }
end
