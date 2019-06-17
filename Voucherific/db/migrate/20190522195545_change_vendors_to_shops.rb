class ChangeVendorsToShops < ActiveRecord::Migration[5.2]
  def change
      rename_table :vendors, :shops
  end
end
