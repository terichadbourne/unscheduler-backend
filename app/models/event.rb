class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :timeslots
  validates :name, :max_votes, presence: true
  validates :proposals_open, :voting_open, :schedule_finalized, inclusion: { in: [true, false] }
end
