class UsersController < ApplicationController
  def new

  end
  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
    else
      if @user.errors.full_messages == ["Name has already been taken"]
        @user = User.find_by(user_params)
        session[:user_id] = @user.id
      else
        flash[:notice]= @user.errors.full_messages
        redirect_to '/users/new' and return
      end
    end
    # session[:user_id] = @user.id
    redirect_to '/messages'
  end

  def logout
    session.clear
    redirect_to '/users/new'
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
