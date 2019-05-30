class RenameColumnInVouchers < ActiveRecord::Migration[5.2]
  def change
    change_table :vouchers do |t|
      t.rename :is_deleted, :is_disabled
    end
  end
end
