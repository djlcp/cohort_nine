class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    change_table :instances do |t|
      t.rename :voucher_id, :template_id
    end
  end
end
