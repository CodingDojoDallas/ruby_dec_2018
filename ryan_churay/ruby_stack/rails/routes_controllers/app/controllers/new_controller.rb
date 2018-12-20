class NewController < ApplicationController
  def index
    render text: "What do you want me to say???"
  end
  def new
  end
  def hello
    render text: "Hello Coding Dojo!"
  end
  def say_hello
    # @name = params[:name]
    @text = "Saying Hello #{params[:name]}!"
    render text: @text
  end
  def joe
    render text: "Saying Hello Joe!"
  end
  def prac_redirect
    redirect_to '/say/hello/joe'
  end
  def times
    # session[:times] = 1
    if !session[:times]
      session[:times] = 1

    else
      session[:times] += 1
    end
    render text: "You visited this url #{session[:times]}"
  end
  def times_reset
    session.clear
    render text: "Session has been cleared"
  end
end
