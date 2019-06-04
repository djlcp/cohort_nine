class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :vouchers, :is_inactive, false
  end
end
