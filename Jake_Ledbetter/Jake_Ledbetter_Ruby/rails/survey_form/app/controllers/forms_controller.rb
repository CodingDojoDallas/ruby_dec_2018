class FormsController < ApplicationController
	def index
		session[:count] || = 0
	end
	def process_form
		session[:count] += 1
		session[:result] = params[:survey]

		return redirect_to '/result'
	end

	def result
		@results = session[:result]
		return render 'result'
	end
end
