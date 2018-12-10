class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def create
    new_dojo_params = params[:dojo]
    @branch         = new_dojo_params[:branch]
    @street         = new_dojo_params[:street]
    @city           = new_dojo_params[:city]
    @state          = new_dojo_params[:state]
    @dojo           = Dojo.create(branch: @branch, street: @street, city: @city, state: @state)
    puts("ERRORS: #{@dojo.errors.full_messages}")
    puts("ERROR COUNT: #{@dojo.errors.count}")
    flash[:errors] = @dojo.errors.full_messages
    puts flash[:errors]
    if flash[:errors].length > 0
      redirect_to :action => "new"
    else
      redirect_to :action => "index"
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    @students = Student.where("dojo_id = ?", @dojo)
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    new_dojo_params = params[:dojo]
    @branch         = new_dojo_params[:branch]
    @street         = new_dojo_params[:street]
    @city           = new_dojo_params[:city]
    @state          = new_dojo_params[:state]
    Dojo.find(params[:id]).update(branch: @branch, street: @street, city: @city, state: @state)
    redirect_to :action => "show"
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to :action => "index"
  end

end
