class UsersController < ApplicationController
  def new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      puts "hello"
      return redirect_to '/sessions/new'
    else
      flash[:errors] = @user.errors.full_messages
      return redirect_to '/users/new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
