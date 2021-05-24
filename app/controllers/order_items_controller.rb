class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @customer = current_customer
    # [10]"Ruby on Rails - ECommerce Shopping Card in 30 minutes", Youtube.com, 2021. [Online]. Available: https://www.youtube.com/watch?v=rPmlA_T_J84 [Accessed: 23- May- 2021] 
    @order_item = @order.order_items.new(order_params)
    @order_item.product.increment!(:popularity, 1)
    @order.save
    session[:order_id] = @order.id
    redirect_to root_path
  end

  private
  def order_params
    params.require(:order_item).permit(:product_id, :size, :color, :quantity,:customer_id)
  end
end
