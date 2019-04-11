class Sale < ApplicationRecord
    belongs_to :product
    belongs_to :customer
    def profit
        0
    end

end
