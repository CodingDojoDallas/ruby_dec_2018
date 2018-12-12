class UsersController < ApplicationController
  def logout
    session.clear
    redirect_to "/users/new"
  end
  def new

  end
  def create
    if User.exists?(username: params[:user][:username])
      session[:user] = User.find_by(username: params[:user][:username]).id
      redirect_to "/messages"
    else
      @user = User.new(params.require(:user).permit(:username))
      if @user.save
        session[:user] = User.last.id
        redirect_to "/messages"
      else
        flash[:notice] = @user.errors.full_messages
        redirect_to "/users/new"
      end
    end
  end
end
