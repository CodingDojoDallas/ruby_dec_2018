class SayController < ApplicationController
  def index
    render :plain => "What do you want me to say???"
  end

  def hello
    render :plain => "Saying Hello!"
  end
  
  def hello_joe
    render :plain => "Saying Hello Joe!"
  end
  
  def hello_michael
    redirect_to :action => "hello_joe"
  end
end
