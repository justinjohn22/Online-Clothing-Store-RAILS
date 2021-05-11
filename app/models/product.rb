class Product < ApplicationRecord
    has_many :saved_items, dependent: :destroy
end
