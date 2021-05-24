module SessionsHelper
  def log_in(customer)
    session[:customer_id] = customer.id
  end

  def filter_on(filter)
    session[:filter_id] = filter.id
  end

  # Remembers a user in a persistent session.
  def remember(customer)
    customer.remember
    cookies.permanent.signed[:user_id] = customer.id
    cookies.permanent[:remember_token] = customer.remember_token
  end

  def current_customer?(customer)
    customer == current_customer
  end

  def current_customer
    @current_customer ||= Customer.find_by(id: session[:customer_id])
  end

  def current_filter
    @current_filter ||= Filter.find_by(id: session[:filter_id])
  end
  
  def logged_in?
    !current_customer.nil?
  end

  def filter_is_on?
    !current_filter.nil?
  end
  
  def filter_out
    session.delete(:filter_id)
    @current_filter = nil
  end

  # [5]"Ruby on Rails Tutorial (3rd Ed.)", Softcover.io, 2021. [Online]. Available: https://3rd-edition.railstutorial.org/book/log_in_log_out [Accessed: 23- May- 2021] 
  def log_out
    session.delete(:customer_id)
    @current_customer = nil
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
  
end
