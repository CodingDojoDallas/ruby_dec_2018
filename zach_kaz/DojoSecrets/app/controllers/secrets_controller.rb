class SecretsController < ApplicationController
  def new
  end

  def create
    @user=User.find(session[:user_id])
    @secret = Secret.new(params.require(:secret).permit(:content))
    @secret.user=@user
    if @secret.save
      redirect_to secrets_index_path and return
    else
      flash[:notice] = @secret.errors.messages
      redirect_to users_secrets_path(@user) and return
    end
  end
  
  def edit
  end

  def update
  end

  def destroy
    @secret=Secret.find(params[:secret]['id'])
    @user=User.find(session[:user_id])
    if @secret.user==@user
      @secret.destroy
      redirect_to users_index_path(@user) and return
    else
      redirect_to users_index_path(@user) and return
    end
  end

  def index
    @user=current_user
    @mysecrets=@user.secrets.all.includes(:likes)
    @secrets=Secret.all.includes(:user)
    @likecounts= Like.group(:secret_id).count
    @mylikedsecrets=@user.secrets_liked.all
  end
  def useronly
    if (session[:user_id].to_s != params[:id])
      render text: "You cannot see this users secrets!" and return
    end
    @user=User.find(session[:user_id])
    @secrets=@user.secrets.all
  end
end
