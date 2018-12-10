class DojosController < ApplicationController
	def index
		@Dojos = Dojo.all
	end
	def create
		dojo = Dojo.new(dojo_params)
		if dojo.valid?
			dojo.save
			redirect_to '/dojos'
		else
			flash[:errors] = dojo.errors.full_messages
			redirect_to '/dojos/new' 
		end	
	end
	def new
		@errors = flash[:errors]
	end
	def edit
		@dojo = Dojo.find(params[:id])
		@errors = flash[:errors]
	end
	def update
		dojo = Dojo.find(params[:id])
		dojo.update(dojo_params)
		if dojo.valid?
			dojo.save
			redirect_to "/dojos/#{params[:id]}/edit"
		else
			flash[:errors] = dojo.errors.full_messages
			redirect_to "/dojos/#{params[:id]}/edit"
		end
	def show
		@dojo = Dojo.find(params[:id])
	end
	end
	def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
    def delete
    	Dojo.find(params[:id]).destroy
    	redirect_to '/dojos'
    end
end