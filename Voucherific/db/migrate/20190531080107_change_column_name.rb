class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    change_table :vouchers do |t|
      t.rename :is_disabled, :is_inactive
    end
  end
end
