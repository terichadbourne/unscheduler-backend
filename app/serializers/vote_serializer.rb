# frozen_string_literal: true

class VoteSerializer < ActiveModel::Serializer
  attributes :id,
             :user_id,
             :discussion_id
end
