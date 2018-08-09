# frozen_string_literal: true

class EventSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :max_votes,
             :proposals_open,
             :voting_open,
             :schedule_finalized,
             :stage,
             :user_id

  has_many :timeslots do
    object.timeslots.pluck(:id)
  end

  def stage
    if object.proposals_open && !object.voting_open && !object.schedule_finalized
      'proposing'
    elsif !object.proposals_open && object.voting_open && !object.schedule_finalized
      'voting'
    elsif !object.proposals_open && !object.voting_open && object.schedule_finalized
      'final'
    else
      'unknown'
    end
  end
end
