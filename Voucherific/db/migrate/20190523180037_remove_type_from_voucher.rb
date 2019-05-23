class RemoveTypeFromVoucher < ActiveRecord::Migration[5.2]
  def change
    remove_column :vouchers, :type, :string
  end
end
