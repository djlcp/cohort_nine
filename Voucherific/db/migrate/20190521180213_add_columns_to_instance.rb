class AddColumnsToInstance < ActiveRecord::Migration[5.2]
  def change
    add_column :instances, :number, :integer
    add_column :instances, :issued_on, :datetime
    add_column :instances, :issued_by, :integer
    add_column :instances, :redeemed_on, :datetime
    add_column :instances, :redeemed_by, :integer
    add_column :instances, :paid_on, :datetime
    add_column :instances, :paid_by, :integer
    remove_column :instances, :user_id, :integer
  end
end
