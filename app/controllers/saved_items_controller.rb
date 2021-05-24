class SavedItemsController < ApplicationController
  
  # [3]"howardmann/Tutorials", GitHub, 2021. [Online]. Available: https://github.com/howardmann/Tutorials/blob/master/Rails_Shopping_Cart.md [Accessed: 23- May- 2021] 
  def create
    chosen_product = Product.find(params[:product_id])
    current_saved_list = @current_saved_list
    if current_saved_list.products.include?(chosen_product)
      @saved_item = current_saved_list.saved_items.find_by(:product_id => chosen_product)
      @saved_item.destroy 
    else
      chosen_product.increment!(:popularity, 1)
      @saved_item = SavedItem.new
      @saved_item.saved_list = current_saved_list
      @saved_item.product = chosen_product
      @saved_item.save
    end
  end

  # [3]"howardmann/Tutorials", GitHub, 2021. [Online]. Available: https://github.com/howardmann/Tutorials/blob/master/Rails_Shopping_Cart.md [Accessed: 23- May- 2021] 
  def create_random
    chosen_product = Product.find(params[:product_id])
    current_saved_list = @current_saved_list
    
    if current_saved_list.products.include?(chosen_product)
     
      @saved_item = current_saved_list.saved_items.find_by(:product_id => chosen_product)
      @saved_item.destroy
    else
      chosen_product.increment!(:popularity, 1)
      @saved_item = SavedItem.new
      @saved_item.saved_list = current_saved_list
      @saved_item.product = chosen_product
      @saved_item.save
    end
    redirect_to root_path
  end
    private 
  def line_item_params
    params.require(:saved_item).permit(:product_id, :saved_list_id)
  end
end
