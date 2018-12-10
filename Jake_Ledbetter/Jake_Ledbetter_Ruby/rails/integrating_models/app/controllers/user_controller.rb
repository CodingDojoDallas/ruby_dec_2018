class UserController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def total
    @user = User.count
    render json: @user
  end
end
