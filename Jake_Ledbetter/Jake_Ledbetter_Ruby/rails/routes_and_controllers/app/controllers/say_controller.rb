class SayController < ApplicationController
  def hello
  end

  def times
  	puts session
  	print session[:times], "*******************"
   	if session.has_key?(:times)
   		session[:times] += 1
   else
   	session[:times] = 1
   end
  end

  def whatDoUWantMeToSay
  end

  def helloBasic
  end

  def HelloJoe
  end

  def HelloMike
  	redirect_to 'say/hello/joe'
  end
  def restart
  	session.clear()
  end
end
