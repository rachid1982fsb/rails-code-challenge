class UsersController < ApplicationController
    before_action :authenticate_user!
    # after_action :verify_authorized
  
    def index
        @users = User.all
        authorize User
    end
  
    def show
      @user = User.find(params[:id])
      authorize @user
    end

    # def new
    #     @user=User.new
    # end

    # def create 
        
    #     @user = User.new(user_params)
    #     byebug
    #     if @user.save
    #       flash[:notice] = "Account created successfully!"
    #       session[:user_id]=@user.id
    #       redirect_to users_path
    #     else
    #       render :new
    #     end
    # end
  
    def update
      @user = User.find(params[:id])
      authorize @user
      if @user.update_attributes(secure_params)
        redirect_to users_path, :notice => "User updated."
      else
        redirect_to users_path, :alert => "Unable to update user."
      end
    end
  
    def destroy
      user = User.find(params[:id])
      authorize user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    end
  
    private
  
    def secure_params
      params.require(:user).permit(:role)
    end
    def user_params
        params.require(:user).permit(:email, :role, :password, :password_confirmation )
    end
end
