class SavedList < ApplicationRecord
    has_many :saved_items, dependent: :destroy
    has_many :products, through: :saved_items
end
