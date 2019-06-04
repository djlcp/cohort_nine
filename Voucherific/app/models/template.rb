class Template < ApplicationRecord    
    has_many :vouchers
    has_many :users, through: :vouchers
end
