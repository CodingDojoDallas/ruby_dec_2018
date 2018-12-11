class SessionsController < ApplicationController
  def new
    if session[:user_id]
      redirect_to "/users/#{session[:user_id]}"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
  def create
    #contains no authentication or validation
    @user = User.find_by_email(params[:email])
    unless @user
      flash[:errors] = ['email not found']
      return redirect_to login_path
    end
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = ['invalid password']
      redirect_to login_path
    end
  end
end
