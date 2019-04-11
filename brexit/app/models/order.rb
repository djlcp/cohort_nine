class Order < ApplicationRecord
belongs_to: supplier
has_one: product

end
