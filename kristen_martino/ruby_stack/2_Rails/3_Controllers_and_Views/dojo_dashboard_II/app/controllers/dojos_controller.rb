class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    (@dojo = Dojo.new) unless @dojo
    puts flash[:errors], "8888888"
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
    if @dojo.errors
      redirect_to :action => "new"
    else
      redirect_to :action => "index"
    end
  end
end
