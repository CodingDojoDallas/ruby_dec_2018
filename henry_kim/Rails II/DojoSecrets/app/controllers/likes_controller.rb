class LikesController < ApplicationController
  before_action :validate_login

  def create
    Like.create(user_id: params[:user], secret_id: params[:secret])
    redirect_to "/secrets"
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to "/users/#{session[:user_id]}"
  end
end
