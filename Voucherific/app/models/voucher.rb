class Voucher < ApplicationRecord
    has_many :instances
<<<<<<< HEAD
    has_many :users, through: :instances
=======
   has_many :users, through: :instances
   has_one :user
>>>>>>> TheTortoise
end
