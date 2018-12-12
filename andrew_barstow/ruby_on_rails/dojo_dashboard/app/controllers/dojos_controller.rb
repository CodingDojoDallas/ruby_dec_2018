class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    render "index"
  end
  def new
    render "new"
  end
  def create
    puts params[:dojo]
    @dojo = Dojo.new(dojo_params)
    @dojo.save
    redirect_to "/dojos"
  end
  def show
    @dojo = Dojo.find(params[:id])
    @students = Student.where(dojo_id: params[:id])
    render 'show'
  end
  def destroy
    Dojo.destroy(params[:id])
    redirect_to '/dojos'
  end
  def edit
    @dojo = Dojo.find(params[:id])
    render 'edit'
  end
  def update
    dojo = Dojo.find(params[:id])
    dojo.update(dojo_params)
    dojo.save
    redirect_to '/dojos'
  end
  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
