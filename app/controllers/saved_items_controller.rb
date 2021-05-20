class SavedItemsController < ApplicationController
  def create
    # Find associated product and current saved_list
    chosen_product = Product.find(params[:product_id])
    current_saved_list = @current_saved_list
    # If saved_list already has this product then find the relevant saved_item for this product
    if current_saved_list.products.include?(chosen_product)
      @saved_item = current_saved_list.saved_items.find_by(:product_id => chosen_product) # Find the saved_item with the chosen_product
      @saved_item.destroy # Iterate the saved_item's quantity by one
    else
      chosen_product.increment!(:popularity, 1)
      @saved_item = SavedItem.new
      @saved_item.saved_list = current_saved_list
      @saved_item.product = chosen_product
      @saved_item.save
    end
  end

  def create_random
    chosen_product = Product.find(params[:product_id])
    current_saved_list = @current_saved_list
    # If saved_list already has this product then find the relevant saved_item for this product
    if current_saved_list.products.include?(chosen_product)
      # Find the saved_item with the chosen_product
      @saved_item = current_saved_list.saved_items.find_by(:product_id => chosen_product)
      # Iterate the saved_item's quantity by one
      @saved_item.destroy
    else
      chosen_product.increment!(:popularity, 1)
      @saved_item = SavedItem.new
      @saved_item.saved_list = current_saved_list
      @saved_item.product = chosen_product
      @saved_item.save
    end
    #refresh page when we create_random
    redirect_to root_path
  end
    private 
  def line_item_params
    params.require(:saved_item).permit(:product_id, :saved_list_id)
  end
end
