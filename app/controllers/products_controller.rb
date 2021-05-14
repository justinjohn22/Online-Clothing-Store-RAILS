class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def details(product)
    @product_description = product.description
    @product_url1 = product.image_url
    @product_url2 = product.image_url2
    @product_url3 = product.image_url3
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
