class Sale < ApplicationRecord
    has_one :product
    belongs_to :customer
    def profit
        0
    end

end
