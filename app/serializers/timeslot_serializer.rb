# frozen_string_literal: true

class TimeslotSerializer < ActiveModel::Serializer
  attributes :id,
             :start_time,
             :end_time,
             :room_name,
             :event_id,
             :user_id
end
