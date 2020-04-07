class HomeController < ApplicationController
    def index
        @users =
        if params[:helps_search]
            User.joins(:helps).where(helps: { help_type: params[:helps_search] })
        else
            User.all
        end

        p @users
        
        @initiatives = Initiative.all
    end
    
end
