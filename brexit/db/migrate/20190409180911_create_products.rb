class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :costprice
      t.integer :saleprice
      t.integer :weight
      t.string :colour

      t.timestamps
    end
  end
end
