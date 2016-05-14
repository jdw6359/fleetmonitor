class CreateDowntimeSegment < ActiveRecord::Migration
  def change
    create_table :downtime_segments do |t|
      t.string :device_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :bytes_traffic
    end
  end
end
