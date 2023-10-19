class Cart < ApplicationRecord
  belongs_to :user
  has_many :foods, through: :cart_foods
end
