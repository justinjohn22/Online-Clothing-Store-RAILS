class SavedItem < ApplicationRecord
    belongs_to :product
    belongs_to :saved_list
end
