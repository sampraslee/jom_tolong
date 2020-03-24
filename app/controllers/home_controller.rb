class HomeController < ApplicationController
    def index
        @initiatives = Initiative.all
    end
    
end
