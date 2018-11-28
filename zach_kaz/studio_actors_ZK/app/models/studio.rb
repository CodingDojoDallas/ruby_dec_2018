class Studio < ActiveRecord::Base
    validates :name, :city, :state, presence:true
    validates :state, length: {minimum:2}
    has_many :actors
  end
