class Product < ApplicationRecord
    has_many :saved_items, dependent: :destroy
    has_many :order_items
end
