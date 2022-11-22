class Event < ApplicationRecord
  belongs_to :user
  has_many :invitations
  validates :start_time, presence: true

  default_scope -> { order(:start_time) }

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time&.strftime('%I:%M %p')}"
  end

  # if event spans over more than one day
  def multi_days?
    if end_time.present?
    (end_time&.to_date - start_time&.to_date).to_i >= 1
    end
  end

end
