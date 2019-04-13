class Order < ApplicationRecord
  belongs_to :supplier
  has_one :product

  def self.total_orders
    all.map { |s| s.quantity }.sum
  end

end
