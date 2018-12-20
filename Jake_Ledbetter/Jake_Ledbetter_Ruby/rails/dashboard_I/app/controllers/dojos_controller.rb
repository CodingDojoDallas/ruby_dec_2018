class DojosController < ApplicationController
	def index
		@Dojos = Dojo.all
	end
end
