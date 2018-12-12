class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
    @count = Like.group(:secret_id).count
  end
  def create
    @secret = Secret.new(secret_params)
    if @secret.valid?
      @secret.save
      # puts "hello"
    else
      flash[:errors] = @secret.errors.full_messages
    end
    redirect_to "/users/#{session[:user_id]}"
  end

  def destroy
    @secret = Secret.find(params[:id])
    if @secret.user_id == session[:user_id]
      @secret.destroy
    else
      @errors = ["You cannot delete this secret"]
      flash[:notice] = @errors
    end
    redirect_to "/users/#{session[:user_id]}"
  end

  private
    def secret_params
      params[:secret][:user_id] = current_user.id
      # puts "secret params for user: #{params[:secret][:user_id]}"
      params.require(:secret).permit(:content, :user_id)
    end
end
