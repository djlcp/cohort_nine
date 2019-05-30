class RemovPaymentDateFromVoucher < ActiveRecord::Migration[5.2]
  def change
    remove_column :vouchers, :payment_sent, :datetime
  end
end
