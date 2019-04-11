class Sale < ApplicationRecord
    belongs_to :product
    belongs_to :customer
    def profit
        0
    end

    def total_sales
      self.sales.map { |s| s.value }.sum
    end

end
