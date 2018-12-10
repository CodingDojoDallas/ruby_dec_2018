class UsersController < ApplicationController
  def new
  end

  def show
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      redirect_to login_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "successfully logged in"
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to signup_path
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    if @user.update(update_params)
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/#{session[:user_id]}/edit"
    end
  end

  def destroy
    @user = User.find(session[:user_id])
    @user.destroy
    session[:user_id] = nil
    redirect_to signup_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
    def update_params
      params.require(:user).permit(:name, :email)
    end
end
