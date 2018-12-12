class GoldsController < ApplicationController
	def index
		session['gold']? x=0 : session['gold']=0
			
		session['activity']? y=0 : session['activity'] = []
		@gold = session[:gold]
		@activities = session[:activity]		
	end

	def earn_lose
		if params[:place] == 'farm'
			gold = rand(10..20)
			puts session[:gold]
			puts gold
		elsif params[:place] == 'cave'
			gold = rand(5..10)
		elsif params[:place] == 'house'
			gold = rand(2..5)
		elsif params[:place] == 'casino'
			gold = rand(-50..50)
		elsif params[:place] == 'restart'
			gold = 0
			session.clear
		end
		time = Time.now
		if session.has_key?(:activity) 
			if session.has_key?(:gold)
			if gold > 0 
				session[:activity] << "Earned #{gold} gold from the #{params[:place]} at #{time}"
			else
				session[:activity] << "Lost #{gold} gold from the Casino at #{time}"			
			end
		
		session[:gold] += gold
		puts session[:gold],"**************************"
			end
		end
				redirect_to root_path

	end
end
