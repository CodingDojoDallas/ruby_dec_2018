class DojosController < ApplicationController

  def index
    @count = 0
    @dojos = Dojo.all
    @dojos.each { |dojo| @count+=1 }
    puts "Total dojo: #{@count}"
    render "index"
  end

  def new
    render "new"
  end

  def create
    Dojo.create(dojo_params)
    redirect_to "/dojos"
  end

  def profile
    @dojo = Dojo.find(params[:id])
    @students = Student.where(dojo_id: params[:id])
    render "show"
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @update_dojo = Dojo.find(params[:id])
    @update_dojo.update(dojo_params)
    redirect_to "/dojos"
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to "/dojos"
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end

end
