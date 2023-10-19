class Food < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :shop
  has_many :carts, through: :cart_foods
  has_many :orders, through: :order
end
