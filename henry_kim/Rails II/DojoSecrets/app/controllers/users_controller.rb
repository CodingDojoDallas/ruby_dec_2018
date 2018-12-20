class UsersController < ApplicationController
  before_action :validate_login, :authorized, except: [:new, :create]

  def new
  end

  def show
    if session[:user_id]
      @user = User.find(session[:user_id])
      @secrets = Secret.where(user: session[:user_id])
      @liked = @user.secrets_liked
    else
      redirect_to "/sessions/new"
    end
  end

  def create
    @user = User.create(user_params)
      if @user.valid?
    		session[:user_id] = @user.id
  		  redirect_to "/users/#{@user.id}"
    	else
    		flash[:errors] = @user.errors.full_messages
    		redirect_to '/users/new'
    	end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
  		# user.save
      p @user
  		redirect_to "/users/#{@user.id}"
  	else
  		flash[:errors] = @user.errors.full_messages
      p flash[:errors] = @user.errors.full_messages
  		redirect_to "/users/#{@user.id}/edit"
  	end
  end

  def destroy
    User.find(params[:id]).destroy
  	session[:user_id] = nil
  	redirect_to '/users/new'
  end


  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

  def authorized
    unless params[:id] == session[:user_id].to_s
      redirect_to "/users/#{session[:user_id]}"
    end
  end

end
