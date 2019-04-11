class Sale < ApplicationRecord
    belongs_to :product

    def profit
        0
    end

end
