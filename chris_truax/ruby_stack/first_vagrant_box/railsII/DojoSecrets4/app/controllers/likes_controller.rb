class LikesController < ApplicationController
  def create
    Like.create(user: current_user, secret: Secret.find(params[:like][:secret_id]))
    redirect_to "/secrets"
  end

  def destroy
    @like = Like.find(params[:id])
    if @like.user_id == session[:user_id]
      @like.destroy
    else
      @errors = ["You are not authorized to destroy that like!"]
      flash[:errors] = @errors
    end
    redirect_to "/secrets"
  end
end
