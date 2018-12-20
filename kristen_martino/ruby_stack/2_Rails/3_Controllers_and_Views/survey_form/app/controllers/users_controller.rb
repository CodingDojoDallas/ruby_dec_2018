class UsersController < ApplicationController
  def index
  end

  def create
    new_user_params = params[:user]
    @name           = new_user_params[:name]
    @location       = new_user_params[:location]
    @language       = new_user_params[:language]
    @comment        = new_user_params[:comment]
    @user          = User.create(name: @name, location: @location, language: @language, comment: @comment)
    session[:user] = @user
    if session[:times]
      session[:times] += 1
      flash[:times] = "Thanks for submitting this form! You have submitted this form #{session[:times]} times now."
    else
      session[:times] = 1
      flash[:times] = "Thanks for submitting this form! You have submitted this form #{session[:times]} time now."
    end
    redirect_to :action => "show"
  end

  def show
    @user = session[:user]
  end
end
