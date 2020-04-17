class UsersController < ApplicationController  
    def new
       @user = User.new
       @user.helps.new
    end

    def create
      @user = User.create!(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to edit_user_path(@user.id)
      else
        render 'new'
      end
    end
    
    def show
      @user = current_user
    end
    
    def edit
      @user = current_user
    end
    
    def update
      @user = current_user
      if @user.valid_confirmation_code?(code_params["code"], +60, @user.phone_number)
        @user.update(verified: true)
        puts 'Your number is verified!'
        redirect_to root_path
      else
        render 'edit'
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
