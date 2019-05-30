class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :dob, :datetime
    add_column :users, :is_admin, :boolean
    add_column :users, :is_vendor, :boolean
  end
end
