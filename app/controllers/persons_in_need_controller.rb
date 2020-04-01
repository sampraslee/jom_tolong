class PersonsInNeedController < ApplicationController
  include Verify
  
    def new
       @person_in_need = PersonInNeed.new
       @person_in_need.helps.new
    end

    def create
      @person_in_need = PersonInNeed.create!(person_in_need_params)
      if valid_phone_number?(+60,person_in_need_params['phone_number'])
        @person_in_need.save
        redirect_to root_path
      else
        render 'new'
      end
    end
    
    private

    def person_in_need_params
      params.require(:person_in_need).permit(:name, :phone_number, helps_attributes: [:district_id,:help_type,:description])
    end
end
