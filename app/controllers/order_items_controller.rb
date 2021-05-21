class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @customer = current_customer
    @order_item = @order.order_items.new(order_params)
    @order_item.product.increment!(:popularity, 1)
    @order.save
    session[:order_id] = @order.id
  end

  private
  def order_params
    params.require(:order_item).permit(:product_id, :size, :color, :quantity,:customer_id)
  end
end
