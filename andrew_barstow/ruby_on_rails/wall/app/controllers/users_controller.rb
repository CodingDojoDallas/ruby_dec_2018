class UsersController < ApplicationController
  def new
  end
  def create
    @user = User.new(user_params)
    if @user.save()
      redirect_to messages_path
      session[:user_id] = @user.id
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to users_new_path
    end
  end

  private 
  def user_params
    params.require(:user).permit(:username)
  end
end
