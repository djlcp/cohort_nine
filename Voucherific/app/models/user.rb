class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :shop, optional: true

       
         has_many :vouchers, :class_name => 'User', :foreign_key => 'customer_id'
         has_many :vouchers, :class_name => 'User', :foreign_key => 'vendor_id'
         has_many :vouchers, :class_name => 'User', :foreign_key => 'admin_id'


         has_many :templates, through: :vouchers

  def role
    if is_admin?
      "Admin"
    elsif is_vendor? # give you false if nil or true if there is a date 
      "Vendor"
    else
      "Customer"
    end
  end
end
