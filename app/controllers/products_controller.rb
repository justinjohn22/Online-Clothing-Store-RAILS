class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def details
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  def filter 
    
  end

  def women
    @products = Product.where(collection_type: "women") 
  end

  def men
    @products = Product.where(collection_type: "men")
  end

  def kids
     @products = Product.where(collection_type: "kids")
  end

  def newins
    @products = Product.where(collection_type: "new-ins")
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end
end
