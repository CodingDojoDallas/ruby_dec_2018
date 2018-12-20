class SessionsController < ApplicationController

  def create
      # Log User In
      @user = User.find_by_email(params[:user][:email]).try(:authenticate, params[:user][:password])
      # if authenticate true
      if @user && @user.authenticate(params[:user][:password])
          # save user id to session
          session[:user_id] = @user.id
          flash[:success] = ["Successfully logged in!"]
          # redirect to users profile page
          redirect_to "/events"
      # if authenticate false
      else
          # add an error message -> flash[:errors] = ["Invalid"]
          flash[:errors] = ["Invalid Combination"]
          # redirect to login page
          redirect_to "/users"
      end
  end

  def destroy
      # Log User out
      # set session[:user_id] to null
      session[:user_id] = nil
      # redirect to login page
      redirect_to '/users'
  end
end
