class RemoveVoucherFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :voucher, foreign_key: true
  end
end
