class CreateCheckIn < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.string :device_id
      t.datetime :check_in_time
      t.string :status
    end
  end
end
