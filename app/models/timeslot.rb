class Timeslot < ApplicationRecord
  belongs_to :event, foreign_key: 'event_id'
  belongs_to :user, foreign_key: 'user_id'
  validates :start_time, :end_time, :room_name, presence: true
end
