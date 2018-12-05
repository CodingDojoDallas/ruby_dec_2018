class UsersController < ApplicationController
after_action :increment_counter, only: [:index]

  def index
    render 'index'
  end

  def create
    @user = User.create(user_params)
      if @user.valid?
        puts "It successfully created"
        session[:user_id] = @user.id
        puts @user
        puts session[:user_id]
        redirect_to '/result/'
      else
        puts "Something went wrong"
        redirect_to '/'
    end
  end

  def result
    @user = User.find(session[:user_id])
    flash[:notice] = "Thanks for submitting this form! You have submitted this form #{session[:counter]} times now."
    render "result"
  end


  private
  def increment_counter
    if session[:counter].nil?
        session[:counter] = 0
    end
    session[:counter] += 1
  end

  def user_params
    params.require(:user).permit(:name, :location, :language, :comment)
  end

end
