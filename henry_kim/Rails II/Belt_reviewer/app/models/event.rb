class Event < ActiveRecord::Base
  belongs_to :user
  has_many :users_attending, through: :attendance, source: :user
  has_many :comments, dependent: :destroy
  has_many :attendance, dependent: :destroy
  validates :name, :date, :city, :state, presence: true
  validates :state, length: { is: 2 }
  validate :past_events_invalid
  before_save :upcase_fields

  private
    def past_events_invalid
      if date.present? && date < Date.today
        errors.add(:date, "can't be in the past")
      end
    end

    def upcase_fields
      self.state.upcase!
    end
end
