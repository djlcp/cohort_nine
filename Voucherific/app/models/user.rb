class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :shop, optional: true

       
         has_many :vouchers, :class_name => 'User', :foreign_key => 'customer_id'
         has_many :vouchers, :class_name => 'User', :foreign_key => 'vendor_id'
         has_many :vouchers, :class_name => 'User', :foreign_key => 'admin_id'

<<<<<<< HEAD
         has_many :vouchers, through: :instances

# def self.current_user
  #Thread.current[:user]
#end

# def self.current_user=(user)
 # Thread.current[:user] = user
#end

=======
         has_many :templates, through: :vouchers
>>>>>>> development
end
