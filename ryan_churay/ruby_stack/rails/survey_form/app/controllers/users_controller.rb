class UsersController < ApplicationController
  def new


  end
  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    if session[:count]
      session[:count] += 1
    else
      session[:count] = 1
    end
    flash[:count] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."
    puts "in the create method"
    redirect_to '/result'
  end
  def view
    puts "in the view method"
    @user = User.find(session[:user_id])
    render 'view'
  end
  private
    def user_params
      params.require(:user).permit(:name, :dojo, :language, :comment)
    end
end
