class SavedListsController < ApplicationController
    def show
        @saved_list = @current_saved_list
    end

    def destroy 
        @saved_list = @current_saved_list
        @saved_list.destroy 
        cookies[:saved_list_id] = nil 
        redirect_to root_path
    end
end
