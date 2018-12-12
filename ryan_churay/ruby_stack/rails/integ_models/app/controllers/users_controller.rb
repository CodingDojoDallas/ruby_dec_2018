class UsersController < ApplicationController
  def index
    @list = User.all
    render json: @list
  end

  def new
  end
  def find_user
    @user = User.find(params[:id])
    render json: @user
  end
  def edit
    @user = User.find(params[:id])
    puts @user
  end
  def create
    puts "in the create method"
    User.create(name: params[:name])
    redirect_to '/users'
  end
  def total
    @total = 0
    User.all{ |i| @total +=1}
    render text: "Total Users: #{@total}"
  end
end
