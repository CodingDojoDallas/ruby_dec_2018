class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(users_param)
    if @user.save
      flash[:notice] = ['User successfully created']
      redirect_to "/users/#{@user.id}"
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to "/users/new"
    end
  end

  def show
    @user = User.find(params[:id])
  end


  private
  def users_param
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
