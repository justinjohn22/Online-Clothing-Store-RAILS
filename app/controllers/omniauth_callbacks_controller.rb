class OmniauthCallbacksController < ApplicationController
  def twitter
    render plain: "Success! You Have logged in via twitter"
  end
end