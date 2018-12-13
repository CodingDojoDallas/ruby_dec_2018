class SecretsController < ApplicationController
before_action :validate_login

  def index
    @secrets = Secret.all
    @user = User.find(session[:user_id])
  end

  def create
    secret = Secret.create(secret_params)
    if secret.valid?
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = secret.errors.full_messages
      redirect_to "/users/#{session[:user_id]}"
    end
  end

  def destroy
    @secret = Secret.find(params[:id])
    @secret.destroy
    redirect_to  "/users/#{session[:user_id]}"
  end

  private
  def secret_params
    params.require(:secret).permit(:content, :user_id)
  end


end
