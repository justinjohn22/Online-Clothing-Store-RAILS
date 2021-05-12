class PagesController < ApplicationController
    def home
      #This generates random product from the collection
      @random_product = Product.order('RANDOM()').first
      @popular_products = Product.where("popularity >= ?", 0.8) 
    end
end
