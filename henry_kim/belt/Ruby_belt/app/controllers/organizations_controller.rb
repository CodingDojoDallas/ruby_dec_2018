class OrganizationsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @group = Organization.all
  end

  def create
    group = Organization.create(group_params)
    if group.valid?
      a = Attendance.create(user_id: session[:user_id], organization:group)
      p a
      flash[:success] = ["Organization has been successfully created!"]
      redirect_to "/organizations"

    else
      flash[:errors] = group.errors.full_messages
      redirect_to "/organizations"
    end
  end

  def show
    @group = Organization.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def edit
  end

  def update
  end

  def destroy
    group = Organization.find(params[:id])
    group.destroy
    redirect_to "/organizations"
  end

  private
  def group_params
    params.require(:organization).permit(:name, :description, :user_id)
  end
end
