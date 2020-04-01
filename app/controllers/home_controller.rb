class HomeController < ApplicationController
    def index
        @initiatives = Initiative.all
        @users = User.all
    end
    
end
