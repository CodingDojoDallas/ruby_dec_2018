class UsersController < ApplicationController
    def new
    end
    def create
      @user = User.new(params.require(:user).permit(:username))
      if @user.save
        flash[:success] = 'Welcome, '+@user.username.to_s
        session[:id]=User.last.id
        redirect_to '/posts'
      else
        flash[:notice] = @user.errors.messages
        redirect_to new_user_path
      end
    end
    def logout
        session.clear
        redirect_to new_user_path
    end
  end
