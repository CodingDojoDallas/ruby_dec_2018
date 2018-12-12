class Dojo < ActiveRecord::Base
  validates :branch, :street, :city, :state, presence: true
end
