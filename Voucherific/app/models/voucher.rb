class Voucher < ApplicationRecord
    belongs_to :customer, :class_name => 'User', :foreign_key => 'customer_id', optional: true
    belongs_to :vendor, :class_name => 'User', :foreign_key => 'vendor_id', optional: true
    belongs_to :admin, :class_name => 'User', :foreign_key => 'admin_id', optional: true
  
    belongs_to :template

    def status
        if created_at > 30.days.ago
          "Valid"
        elsif created_at < 30.days.ago
          "Expired"
        elsif redeemed_at # give you false if nil or true if there is a date 
          "Redeemed"
        else
          "Valid"
        end
    end
end
