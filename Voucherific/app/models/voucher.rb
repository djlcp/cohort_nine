class Voucher < ApplicationRecord
    has_many :instances
    has_many :users, through: :instances

    
   has_one :user
end
