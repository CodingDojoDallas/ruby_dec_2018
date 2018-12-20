class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      return redirect_to '/events'
    else
      flash[:errors] = @user.errors.full_messages
      return redirect_to '/'
    end
  end

  def edit
  end

  def update
    @user = current_user
    if @user.update(user_params)
      return redirect_to "/events"
    else
      flash[:errors] = @user.errors.full_messages
      return redirect_to "/users/#{current_user.id}/edit"
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
    end
end
