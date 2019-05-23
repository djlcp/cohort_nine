class Instance < ApplicationRecord
    belongs_to :customer, :class_name => 'User', :foreign_key => 'customer_id', optional: true
    belongs_to :seller, :class_name => 'User', :foreign_key => 'seller_id', optional: true
    belongs_to :admin, :class_name => 'User', :foreign_key => 'admin_id', optional: true
  
    belongs_to :voucher
end
