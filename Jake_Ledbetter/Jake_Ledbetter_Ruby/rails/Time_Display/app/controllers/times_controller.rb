class TimesController < ApplicationController
	def main
		@time = Time.now.strftime("%H:%M %p")
		@date = Time.now.strftime("%m/%d/%Y")
		return render "index.html.erb"
	end
end
