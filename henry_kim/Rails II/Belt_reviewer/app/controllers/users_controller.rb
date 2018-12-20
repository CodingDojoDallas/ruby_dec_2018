class UsersController < ApplicationController
  layout "two_column", only: [:index]

  def index
  end

  def show
    @user = User.find(session[:user_id])
  end

  def create
    user = User.create(user_params)
    unless user.valid?
      flash[:errors] = user.errors.full_messages
      redirect_to "/"
    else
      session[:user_id] = user.id
      redirect_to "/events"
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
  		# user.save
      p @user
  		redirect_to "/events"
  	else
  		flash[:errors] = @user.errors.full_messages
      p flash[:errors] = @user.errors.full_messages
  		redirect_to "/users/#{@user.id}/edit"
  	end
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :date, :city, :state, :password, :password_confirmation)
  end


  end
