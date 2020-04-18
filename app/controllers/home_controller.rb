class HomeController < ApplicationController
    def index
        @helps =
        # if user selects both help type & area
        if (params[:helps_search] != "" && params[:helps_search] != nil) && (params[:districts_search] != "" && params[:districts_search] != nil)
            Help.where({help_type: params[:helps_search]} && {district_id: params[:districts_search]})
        # if user  only selects help type 
        elsif (params[:helps_search] != "") && (params[:districts_search] == "")
            Help.where({help_type: params[:helps_search]})
        # if user only selects districts
        elsif (params[:helps_search] == "") && (params[:districts_search] != "")
            Help.where({district_id: params[:districts_search]})
        else
            Help.all
        end

        @initiatives = Initiative.all
        @states = State.all
    end
    
end
