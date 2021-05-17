class PagesController < ApplicationController
    def home
      #This generates random product from the collection
      @random_product = Product.order('RANDOM()').first
      @popular_products = Product.where("popularity >= ?", 0.8)
      @user = User.new
    end

    def create_user
      @random_product = Product.order('RANDOM()').first
      @popular_products = Product.where("popularity >= ?", 0.8)
      @user = User.new(user_params)
      if @user.save
        NewsletterNotifierMailer.send_newsletter_email(@user).deliver
        flash.now[:notice] = 'User has been saved successfully.'
      end

      render :home
    end

    def log_on
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email)
    end
end
