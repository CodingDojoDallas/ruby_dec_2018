class LikesController < ApplicationController
  before_action :validate_login

  def create
    Like.create(user_id: params[:user], secret_id: params[:secret])
    redirect_to "/secrets"
  end

  def destroy
    like = Like.find(params[:id])
    if like.user_id == session[:user_id]
      like.destroy
      redirect_to "/users/#{session[:user_id]}"
    else
      user = User.find(session[:user_id])
      user.destroy
      session[:user_id] = nil
      redirect_to "/sessions/new"
    end
  end

end
