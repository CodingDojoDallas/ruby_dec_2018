class GreetingsController < ApplicationController

  def hello
    render text: "hello"
  end

  def saying_hello
    render text: "Saying Hello!"
  end

  def joe
    render text: "Saying Hello Joe!"
  end

  def say
    render text: "What do you want me to say???"
  end

  def times
    unless session[:number]
      session[:number] = 1
    else
      session[:number]+=1
    end
    render text: "You have visited this url #{session[:number]} times."
  end

  def restart
    session.clear
    redirect_to "/"
  end



end
