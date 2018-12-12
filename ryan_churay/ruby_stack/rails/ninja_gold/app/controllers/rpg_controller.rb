class RpgController < ApplicationController
  def index
    if !session[:gold]
      session[:gold] = 0
    end
    if !session[:activity]
      session[:activity] = []
    end
    render 'index'
  end
  def gold
    puts "in the gold method"
    puts params[:gold]
    @outcome = 'earned'
    @class = 'text-success'
    @date = Time.now.strftime("%Y/%m/%d at %l:%M %p")
    if params[:gold] == "farm"
      @gold = Random.rand(10..20)
      puts @gold
    elsif params[:gold] == 'cave'
      @gold = Random.rand(5..10)
    elsif params[:gold] == 'house'
      @gold = Random.rand(2..5)
    elsif params[:gold] == 'casino'
      @gold = Random.rand(-50..50)
      @outcome = "lost" if @gold < 0
      @class = 'text-danger' if @gold <0
    end
    session[:gold] += @gold
    @gold = @gold.abs
    session[:activity].push("<p class='#{@class}'>You entered #{params[:gold]} and #{@outcome} #{@gold} at #{@date}<p>")
    redirect_to '/'
  end
end
