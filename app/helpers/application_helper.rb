module ApplicationHelper
  # [10]"Ruby on Rails - ECommerce Shopping Card in 30 minutes", Youtube.com, 2021. [Online]. Available: https://www.youtube.com/watch?v=rPmlA_T_J84 [Accessed: 23- May- 2021] 
  def current_order
    if !session[:order_id].nil?
      @find_order = Order.find(session[:order_id]) rescue nil
      if !@find_order
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
