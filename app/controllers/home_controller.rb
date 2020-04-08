class HomeController < ApplicationController
    def index
        byebug
        @helps =
        if (params[:helps_search] != "" && params[:helps_search] != nil) && (params[:districts_search] != "" && params[:districts_search] != nil)
            Help.where({help_type: params[:helps_search]} && {district_id: params[:districts_search]})
        elsif (params[:helps_search] != "") && (params[:districts_search] == "")
            Help.where({help_type: params[:helps_search]})
        elsif (params[:helps_search] == "") && (params[:districts_search] != "")
            Help.where({district_id: params[:districts_search]})
        else
            Help.all
        end

        @initiatives = Initiative.all
    end
    
end
