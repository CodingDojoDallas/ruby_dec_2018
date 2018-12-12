class LikesController < ApplicationController
  def create
    Like.create(user_id: session[:user_id], secret_id: params[:secret][:secret_id])
    redirect_to '/secrets'
  end

  def destroy
    @like = Like.find(params[:id])
    if session[:user_id] == @like.user_id
      @like.destroy
    else
      @errors = ["You cannot unlike for someone else"]
      flash[:notice] = @errors
    end
    redirect_to '/secrets'
  end
end
