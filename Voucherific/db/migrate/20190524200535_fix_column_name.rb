class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    change_table :instances do |t|
      t.rename :redeemed_on, :redeemed_at
      t.rename :paid_on, :paid_at
    end
  end
end
