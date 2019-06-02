class RenameVouchersToTemplates < ActiveRecord::Migration[5.2]
  def change
    rename_table :vouchers, :templates
  end
end
