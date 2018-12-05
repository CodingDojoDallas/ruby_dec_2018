class UsersController < ApplicationController
  layout "two_column", only: [:index, :new, :users]
  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    redirect_to "/users"
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end

  
end
