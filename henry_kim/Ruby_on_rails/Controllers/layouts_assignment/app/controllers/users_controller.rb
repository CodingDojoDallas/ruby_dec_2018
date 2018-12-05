class UsersController < ApplicationController
    layout "two_column"


  def index
    @users = User.all
  end

  def create
    User.create(user_params)
    redirect_to "/users"
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end

end
