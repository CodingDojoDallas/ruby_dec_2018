class LikesController < ApplicationController
  def create
    Like.create(user: current_user, secret: Secret.find(params[:like][:secret_id]))
    redirect_to "/secrets"
  end

  def destroy
    Like.find(params[:id]).destroy
    redirect_to "/secrets"
  end
end
