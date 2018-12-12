class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    render 'index'
  end
  def new
  end
  def view
    @dojo = Dojo.find(params[:id])
    @students = Dojo.find(params[:id]).students
    # @students = Student.find(dojo_id:params[:id])
    render 'view'
  end
  def create
    Dojo.create(dojo_params)
    redirect_to '/dojos'
  end
  def edit
    @dojo = Dojo.find(params[:id])
  end
  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update(dojo_params)
    redirect_to "/dojos/#{params[:id]}"
  end
  def destroy
    Dojo.destroy(params[:id])
    redirect_to '/dojos'
  end


  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
