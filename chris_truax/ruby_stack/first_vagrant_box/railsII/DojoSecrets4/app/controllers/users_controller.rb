class UsersController < ApplicationController
  skip_before_action :require_login, except: [:show,:edit,:update,:destroy]
  before_action :require_its_yours, only: [:show,:edit,:update,:destroy]
  def new
  end

  def show
    @secrets = User.find(params[:id]).secrets
    @user = User.find(params[:id])
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      puts "hello"
      return redirect_to '/sessions/new'
    else
      flash[:errors] = @user.errors.full_messages
      return redirect_to '/users/new'
    end
  end
  def update
    @user = current_user
    if @user.update(user_params)
      puts "hello there!"
      return redirect_to "/users/#{current_user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      return redirect_to "/users/#{current_user.id}/edit"
    end
  end

  def destroy
    session[:user_id] = nil
    User.find(params[:id]).destroy
    redirect_to "/users/new"
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    def require_its_yours
      @@authorize = params[:id].to_i == session[:user_id]
      if !@@authorize
        return redirect_to "/users/#{session[:user_id]}"
      end
        puts "valid"
    end
end
