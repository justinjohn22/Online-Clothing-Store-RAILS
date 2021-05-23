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
    if !current_customer.given_rating
      current_customer.given_rating = true
      current_customer.save
      redirect_to rating_path
    else
      redirect_to root_path
    end
  end
end
