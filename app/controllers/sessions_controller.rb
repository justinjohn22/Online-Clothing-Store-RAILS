class SessionsController < ApplicationController
  def new
  end

  def create
    customer = Customer.find_by(name: params[:session][:name].downcase)
    if customer&.authenticate(params[:session][:password])
      log_in customer
      redirect_to customer
    else
      flash.now[:danger] = "Username/Password combination is not correct"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
