class OmniauthCallbacksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :twitter
  def twitter
    render plain: "Success! You Have logged in via twitter"
  end
end