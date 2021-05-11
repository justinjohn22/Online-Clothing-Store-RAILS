class PagesController < ApplicationController
    def home
      #This generates random product from the collection
      @random_product = Product.order('RANDOM()').first
    end
end
