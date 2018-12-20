class SessionsController < ApplicationController
  def new
  end
  def create
    @user = User.find_by_email(params[:user][:email]).try(:authenticate, params[:user][:password])
    if @user
      session[:user_id] = @user.id
      return redirect_to ("/users/#{@user.id}")
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to "/sessions/new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to "/sessions/new"
  end

end
