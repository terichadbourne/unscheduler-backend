class AddUserToTimeslots < ActiveRecord::Migration[5.1]
  def change
    add_reference :timeslots, :user, foreign_key: true
  end
end
