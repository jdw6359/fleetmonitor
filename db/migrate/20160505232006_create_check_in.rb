class CreateCheckIn < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.string :device_id
      t.string :monitoring_version
      t.string :os_version
      t.string :primary_status
      t.string :cell_status
      t.datetime :check_in_time
    end
  end
end
