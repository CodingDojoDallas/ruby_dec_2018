class UsersController < ApplicationController
  def new
  end
  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
    if @user.save
      flash[:notice] = ['User successfully created']
      redirect_to "/users/#{@user.id}"
    else

      flash[:notice] = @user.errors.full_messages
      redirect_to new_user_path
      #errors we need to code later
    end
  end
  def show
    @user = User.last
  end
end
