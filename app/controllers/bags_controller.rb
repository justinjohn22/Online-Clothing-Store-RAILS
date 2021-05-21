class BagsController < ApplicationController
  def show
    @order_items = OrderItem.where(customer_id: current_customer.id)
  end

  def clear
    @order = current_order
    @order.destroy
    session[:order_id] = nil
    order_items = OrderItem.where(customer_id: current_customer.id)
    order_items.destroy_all
    redirect_to root_path
  end
end
