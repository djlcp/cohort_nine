class Voucher < ApplicationRecord
    belongs_to :customer, :class_name => 'User', :foreign_key => 'customer_id', optional: true
    belongs_to :vendor, :class_name => 'User', :foreign_key => 'vendor_id', optional: true
    belongs_to :admin, :class_name => 'User', :foreign_key => 'admin_id', optional: true
  
    belongs_to :template

    def status
        if created_at > 30.days.ago
          "Potato status 1"
        elsif created_at < 30.days.ago
          "Potato status 2"
        elsif redeemed_at # give you false if nil or true if there is a date 
          "Potato status 3"
        else
          "Potato status 4"
        end
    end
end
