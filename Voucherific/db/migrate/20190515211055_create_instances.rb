class CreateInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :instances do |t|
      t.integer :user_id
      t.integer :voucher_id

      t.timestamps
    end
  end
end
