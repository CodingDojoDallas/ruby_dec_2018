class UsersController < ApplicationController
  layout "two_column", only: [:index]

  def index
  end

  def show
  end

  def create
    user = User.create(user_params)
    unless user.valid?
      flash[:errors] = user.errors.full_messages
      redirect_to "/users"
    else
      session[:user_id] = user.id
      redirect_to "/organizations"
    end
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end


  end
