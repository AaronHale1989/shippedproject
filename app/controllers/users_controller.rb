class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
  end

  
  def user_params
  	params.require(:user).permit(:username, :password, :email)
  end
  
end

