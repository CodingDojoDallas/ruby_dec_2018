class UsersController < ApplicationController
  def new
  end

  def create
    user = User.create(params.require(:user).permit(:username))
    if user.errors.full_messages == ["Username has already been taken"]
      user = User.find_by(params.require(:user).permit(:username))
      flash[:notice]    = ["Welcome, #{user.username}"]
      session[:user_id] = user.id
      redirect_to :controller => "messages", :action => "index"
    elsif user.save
      flash[:notice]    = ["Welcome, #{user.username}"]
      session[:user_id] = user.id
      redirect_to :controller => "messages", :action => "index"
    else
      flash[:notice] = user.errors.full_messages
      redirect_to action: 'new'
    end
  end
end
