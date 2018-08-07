class CreateTimeslots < ActiveRecord::Migration[5.1]
  def change
    create_table :timeslots do |t|
      t.string :start_time
      t.string :end_time
      t.string :room_name
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
