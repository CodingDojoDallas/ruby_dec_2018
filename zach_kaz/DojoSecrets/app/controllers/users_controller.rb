class UsersController < ApplicationController
  skip_before_action :verify_user, except: [:show,:edit,:update,:destroy]
  before_action :authorize_user, except: [:new,:create]
  private
  def authorize_user
    if (session[:user_id].to_s != params[:id])
      redirect_to users_index_path(current_user) and return
    end
  end
  public
  def new
  end

  def show
    @user=current_user
  end

  def edit
    @user=User.find(session[:user_id])
  end
  def update
    @user=User.find(session[:user_id])
    @user.name=params[:user]['name']
    @user.email=params[:user]['email']
    if @user.save
      redirect_to users_index_path(@user.id)
    else
      flash[:notice] = @user.errors.messages
      redirect_to users_edit_path(@user.id)
    end
  end
  def destroy
      @user=User.find(session[:user_id])
    @user.delete
    session.clear
    redirect_to users_new_path
  end
  def create
    if params['user']['password']!=params['user']['confirmpassword']
      flash[:passworderror]='Your passwords did not match. Please try again'
      redirect_to users_new_path and return
    end
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    if @user.save
      flash[:success] = 'Welcome, '+@user.name.to_s
      session[:user_id]=User.last.id
      redirect_to secrets_index_path
    else
      flash[:notice] = @user.errors.messages
      redirect_to users_new_path
    end
  end

end
