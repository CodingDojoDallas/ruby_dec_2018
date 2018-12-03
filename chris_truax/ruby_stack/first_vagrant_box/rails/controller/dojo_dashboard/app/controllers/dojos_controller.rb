class DojosController < ApplicationController
  def index
    @dojocount = Dojo.all.count
    @dojos = Dojo.all
  end

  def new

  end

  def create
    @dojo = Dojo.create(dojo_params)
    redirect_to '/'
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id]).update(dojo_params)
    redirect_to '/'
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/'
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
