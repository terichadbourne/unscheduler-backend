# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :email,
             :admin

  has_many :discussions_proposed do
    object.discussions_proposed.pluck(:id)
  end
  has_many :discussions, through: :votes do
    object.discussions.pluck(:id)
  end
  has_many :events do
    object.events.pluck(:id)
  end

  has_many :timeslots do
    object.timeslots.pluck(:id)
  end
end
