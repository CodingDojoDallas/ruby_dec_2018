class SessionsController < ApplicationController
  skip_before_action :verify_user, except: [:destroy]
  def new
    if session[:user_id] 
      redirect_to 'secrets_index_path'
    end
  end
  def create
    @user=User.find_by email:params['email']
    unless @user
        flash['passworderror'] = "Email was not found in database"
        redirect_to login_path and return
    end
    if @user.authenticate(params['password'])
        session[:user_id]=@user.id
        redirect_to users_index_path(@user.id) and return
    else
        flash['passworderror'] = "Invalid"
        redirect_to login_path and return
    end
  end
  def destroy
    session[:user_id]=nil
    redirect_to login_path
  end
end