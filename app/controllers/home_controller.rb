class HomeController < ApplicationController
    def index
        @initiatives = Initiative.all
        @persons_in_need = PersonInNeed.all
    end
    
end
