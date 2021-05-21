module ApplicationHelper
  def current_order
    if !session[:order_id].nil?
      @find_order = Order.find(session[:order_id]) rescue nil
      if !@find_order
        session[:order_id] = nil
        current_order
      elsif @find_order.order_status_id != 1
        session[:order_id] = nil
        current_order
      else
        Order.find(session[:order_id])
      end
    else
      Order.new
    end
  end
end
