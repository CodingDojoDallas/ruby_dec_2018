class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render "new"
  end

  def createUser
    @user = User.create( name: params[:name])
    redirect_to '/users'
  end

  def edit
    @user = User.find(params[:id])
    p @user
    render "edit"
  end

  def update
    p @user
    user = User.find(params[:id])
    user.name = params[:name]
    user.save
    redirect_to '/users'
  end

  def profile
    @user = User.find(params[:id])
    render json: @user
  end

  def totalUser
    users = User.all
    @count = 0
    users.each { |users| @count+=1  }
    puts "Total users: #{@count}"
    render "total"
  end

end
