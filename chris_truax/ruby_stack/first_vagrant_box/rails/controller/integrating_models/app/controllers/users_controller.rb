class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end

  def create
    User.create(name: params[:name])
    redirect_to '/'
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update(name: params[:name])
    redirect_to '/'
  end

  def total
    @total = User.all.count
    render text: "The total number of users is " + @total.to_s
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/'
  end
end
