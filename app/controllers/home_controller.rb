class HomeController < ApplicationController
    def index
        byebug
        @users =
        if (params[:helps_search] != "" && params[:helps_search] != nil) && (params[:districts_search] != "" && params[:districts_search] != nil)
            User.joins(:helps).where(helps: {help_type: params[:helps_search]} && {district_id: params[:districts_search]})
        elsif params[:helps_search] || params[:districts_search]
            User.joins(:helps).where(helps: { help_type: params[:helps_search]} || {district_id: params[:districts_search]})  
        else
            User.all
        end
        
        @initiatives = Initiative.all
    end
    
end
