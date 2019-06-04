class Voucher < ApplicationRecord
    belongs_to :customer, :class_name => 'User', :foreign_key => 'customer_id', optional: true
    belongs_to :vendor, :class_name => 'User', :foreign_key => 'vendor_id', optional: true
    belongs_to :admin, :class_name => 'User', :foreign_key => 'admin_id', optional: true
  
    belongs_to :template
end
