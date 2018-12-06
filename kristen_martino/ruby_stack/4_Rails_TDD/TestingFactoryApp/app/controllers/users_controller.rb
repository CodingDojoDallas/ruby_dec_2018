class UsersController < ApplicationController
  def new; end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
    if @user.save
      flash[:notice] = ['User successfully created']
      flash[:notice] = ["Welcome, #{@user.first_name}"]
      redirect_to action: 'show', id: @user.id
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to action: 'new'
    end
  end

  def show
    id = params[:id]
    @user = User.find(id)
  end
end
