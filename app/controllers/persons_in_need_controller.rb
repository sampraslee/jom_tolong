class PersonsInNeedController < ApplicationController
    def new
        @person_in_need = PersonInNeed.new
        @person_in_need.helps.new
    end
    
    def create
        @person_in_need = PersonInNeed.create!(person_in_need_params)
        @person_in_need.helps.first.person_in_need_id = @person_in_need.id
        byebug
        if @person_in_need.save
          redirect_to root_path 
        else
          redirect_to new_persons_in_need_path
        end
    end

    private

    def person_in_need_params
      params.require(:person_in_need).permit(:name, :phone_number, helps_attributes: [:help_type, :description, :ditrict])
    end
end
