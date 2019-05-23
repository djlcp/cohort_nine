class AddCustomerToInstance < ActiveRecord::Migration[5.2]
  def change

       # Notice how the index is for :creator but references users
       add_reference :instances, :customer, references: :users, index: true
       add_reference :instances, :admin, references: :users, index: true
       add_reference :instances, :vendor, references: :users, index: true


       # Just like the belongs_to contained class_name: :User, the foreign key
       # also needs a specific custom column name as :creator_id
       add_foreign_key :instances, :users, column: :customer_id
       add_foreign_key :instances, :users, column: :admin_id
       add_foreign_key :instances, :users, column: :vendor_id
  end
end
