class LikesController < ApplicationController
  def create
    @user=current_user
    @like = Like.new()
    @like.user=@user
    @like.secret=Secret.find(params[:like]['secret_id'])
    @like.save
    redirect_to secrets_index_path and return
  end

  def update
  end

  def destroy
    @like=Like.where(user_id:(params[:like]['user_id']).to_s, secret_id:(params[:like]['secret_id']).to_s).first
    @user=User.find(session[:user_id])
    if @like.user==@user
      @like.destroy
      redirect_to secrets_index_path and return
    else
      redirect_to secrets_index_path and return
    end
  end
end