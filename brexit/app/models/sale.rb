class Sale < ApplicationRecord
    has_one :product
    belongs_to :customer
    def profit
        0
    end

    def self.total_sales
      all.map { |s| s.quantity }.sum
    end

end
