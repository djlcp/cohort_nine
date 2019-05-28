class RemoveIssuedAtFromInstances < ActiveRecord::Migration[5.2]
  def change
    remove_column :instances, :issued_on, :DateTime
  end
end
