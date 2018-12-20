class Actor < ActiveRecord::Base
  belongs_to :studio
  validates :first_name, :last_name, presence:true

end
