class User < ApplicationRecord
    has_many :carts
    has_many :foods
    has_many :orders, through: :order
    
end
