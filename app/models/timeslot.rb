class Timeslot < ApplicationRecord
  belongs_to :event, foreign_key: 'event_id'
  validates :start_time, :end_time, :room_name, presence: true
end
