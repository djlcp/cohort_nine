class Template < ApplicationRecord    
    has_many :instances
    has_many :users, through: :instances
end
