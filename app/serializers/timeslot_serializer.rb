# frozen_string_literal: true

class TimeslotSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :room_name
  has_one :event
  has_one :user
end
