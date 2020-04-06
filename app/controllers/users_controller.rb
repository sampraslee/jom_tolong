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
        session[:user_id] = @user.id
        redirect_to show_path
      else
        render 'new'
      end
    end
    
    def show
      @user = current_user
    end
    
    def update
      byebug
      @user = current_user
      if valid_confirmation_code?(code_params["code"], +60, @user.phone_number)
        @user.update(verified: true)
        puts 'Your number is verified!'
        redirect_to root_path
      else
        render 'show'
        puts 'sketchers'
      end
    end
    
    private

    def user_params
      params.require(:user).permit(:name, :phone_number, helps_attributes: [:district_id,:help_type,:description])
    end

    def code_params
      params.require(:user).permit(:code)
    end
end
