class BagsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def clear
    @order = current_order
    @order.destroy
    session[:order_id] = nil
    redirect_to root_path
  end
end
