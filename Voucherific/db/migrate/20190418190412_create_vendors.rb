class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :location
      t.integer :contact_phone
      t.string :contact_email

      t.timestamps
    end
  end
end
