class ChangePhoneNumberToString < ActiveRecord::Migration[5.2]
  def change
    change_column :shops, :contact_phone, :string
  end
end
