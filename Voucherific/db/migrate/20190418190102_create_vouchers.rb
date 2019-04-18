class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.decimal :value
      t.string :description
      t.string :type
      t.datetime :expiry_date
      t.datetime :redeemed_date
      t.string :status
      t.datetime :payment_sent

      t.timestamps
    end
  end
end
