class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :ordered_date
      t.datetime :fulfilled_date
      t.integer :quantity

      t.timestamps
    end
  end
end
