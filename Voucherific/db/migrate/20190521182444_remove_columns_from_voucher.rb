class RemoveColumnsFromVoucher < ActiveRecord::Migration[5.2]
  def change
    remove_column :vouchers, :expiry_date, :datetime
    remove_column :vouchers, :redeemed_date, :datetime
    remove_column :vouchers, :status, :string
  end
end
