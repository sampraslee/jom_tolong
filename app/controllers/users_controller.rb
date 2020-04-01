class UsersController < ApplicationController
  include Verify
  
    def new
       @user = User.new
       @user.helps.new
    end

    def create
      @user = User.create!(user_params)
      if valid_phone_number?(+60,user_params['phone_number'])
        @user.save
        redirect_to root_path
      else
        render 'new'
      end
    end
    
    private

    def user_params
      params.require(:user).permit(:name, :phone_number, helps_attributes: [:district_id,:help_type,:description])
    end
end
