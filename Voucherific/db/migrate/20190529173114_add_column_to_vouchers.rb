class AddColumnToVouchers < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :is_deleted, :boolean
  end
end
