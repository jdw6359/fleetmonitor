class CreateCheckIn < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.string :device_id
      t.string :monitoring_version
      t.string :os_version
      t.string :status
      t.datetime :check_in_time
    end
  end
end
