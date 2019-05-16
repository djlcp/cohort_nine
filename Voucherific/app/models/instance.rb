class Instance < ApplicationRecord
    belongs_to :users
    belongs_to :vouchers
end
