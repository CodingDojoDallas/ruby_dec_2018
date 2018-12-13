class Dojo < ActiveRecord::Base
  has_many :ninjas, dependent: :destroy

  validates :name, :city, presence: true, length: {in: 2..20}
  validates :state, presence: true, length: {is: 2}

  # def ninja_find
  #   Dojo.find_by_sql("SELECT * FROM ninjas WHERE ninjas.dojo_id = #{self.id}")
  # end

  after_destroy :ninja_destroy

  private
    def ninja_destroy
      Dojo.find_by_sql("DELETE FROM ninjas WHERE ninjas.dojo_id = #{self.id}")
    end
end
