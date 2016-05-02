class CreateClient < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone

      t.timestamps
    end
  end
end
