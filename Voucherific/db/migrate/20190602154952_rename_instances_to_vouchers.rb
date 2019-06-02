class RenameInstancesToVouchers < ActiveRecord::Migration[5.2]
  def change
    rename_table :instances, :vouchers
  end
end
