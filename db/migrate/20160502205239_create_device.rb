class CreateDevice < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :serial_number
      t.integer :client_id

      t.timestamps
    end
  end
end