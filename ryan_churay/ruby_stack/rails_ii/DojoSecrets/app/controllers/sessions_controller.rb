class SessionsController < ApplicationController
  def new
      # render login page
  end
  def create
    # Log User In
    # puts params[:user][:email]
    @user = User.find_by_email(params[:user][:email]).try(:authenticate, params[:user][:password])
    puts "this is the user #{@user}"
    if @user
      # puts "THIS IS USER ID #{@user.id}"
      session[:user_id] = @user.id
      return redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = ["Invalid Combination"]
      return redirect_to '/sessions/new'
    end
    
  end
  def destroy
    # Log User out
    session[:user_id] = nil
    # set session[:user_id] to null
    # redirect to login page
    redirect_to '/sessions/new'
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
