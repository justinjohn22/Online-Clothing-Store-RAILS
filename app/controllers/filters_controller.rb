class FiltersController < ApplicationController
    def new
      @filter = Filter.new
    end 
    
    def create
      @filter = Filter.new(filter_params)
      if @filter.save
        filter_on @filter
        redirect_to all_path
      end
    end

    def filter_params
      params.require(:filter).permit(:all,:outdoors,:underwear,:formal,:summer,:indoors,:grey,:red,:brown,:blue,:green,:black,:white,:size)
    end
end
