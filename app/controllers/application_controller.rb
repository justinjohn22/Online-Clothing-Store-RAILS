class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :current_saved_list

  private 
     def current_saved_list
      if session[:saved_list_id]
        saved_list = SavedList.find_by(:id => session[:saved_list_id])
        if saved_list.present?
          @current_saved_list = saved_list
        else
          session[:saved_list_id] = nil
        end
      end

      if session[:saved_list_id] == nil
        @current_saved_list = SavedList.create
        session[:saved_list_id] = @current_saved_list.id
      end
    end 
end
