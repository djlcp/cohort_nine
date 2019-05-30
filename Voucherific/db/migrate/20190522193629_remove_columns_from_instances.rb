class RemoveColumnsFromInstances < ActiveRecord::Migration[5.2]
  def change
    remove_column :instances, :issued_by, :integer
    remove_column :instances, :redeemed_by, :integer
    remove_column :instances, :paid_by, :integer
  end
end
