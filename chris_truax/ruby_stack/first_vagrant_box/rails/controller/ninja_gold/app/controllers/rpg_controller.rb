class RpgController < ApplicationController
  @@time = Time.now.strftime("%Y/%m/%d %X %p")
  def index
    session[:gold] = 0 if !session[:gold]
    session[:activity] = "" if !session[:activity]
  end
  def farm
    @random = rand(10..20)
    session[:gold] += @random
    session[:activity] = "<p class='text-success'>Earned #{@random} gold from the farm! (#{@@time})</p>" + session[:activity]
    redirect_to '/'
  end

  def cave
    @random = rand(5..10)
    session[:gold] += @random
    session[:activity] = "<p class='text-success'>Earned #{@random} gold from the cave! (#{@@time})</p>" + session[:activity]
    redirect_to '/'
  end

  def casino
    @random = rand(-50..50)
    session[:gold] += @random
    if @random < 0
      @random = @random.abs
      session[:activity] = "<p class='text-danger'>Entered a casino and lost #{@random} gold... Ouch... (#{@@time})</p>" + session[:activity]
    else
      session[:activity] = "<p class='text-success'>Entered a casino and won #{@random} gold! (#{@@time})</p>" + session[:activity]
    end
      redirect_to '/'
  end

  def house
    @random = rand(2..5)
    session[:gold] += @random
    session[:activity] = "<p class='text-success'>Earned #{@random} gold from the house! (#{@@time})</p>" + session[:activity]
    redirect_to '/'
  end
end
