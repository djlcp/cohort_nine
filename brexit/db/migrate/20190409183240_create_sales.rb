class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.date :SoldDate
      t.integer :quantity

      t.timestamps
    end
  end
end
