class RpgController < ApplicationController

  def index
    if session[:gold].nil?
      session[:gold]  = 0
    end
    unless session[:activities]
      session[:activities] = []
    end
  end

  def monies
    min = params[:min].to_i
    max = params[:max].to_i
    sum = rand(min..max)
    session[:gold] += sum

    session[:activities].push(["you earned #{sum} gold at the farm", 0]) if params[:title] == 'farm'
    session[:activities].push(["you found #{sum} gold in the cave", 0]) if params[:title] == 'cave'
    session[:activities].push(["you discovered #{sum} gold in the house", 0]) if params[:title] == 'house'
    session[:activities].push(["you won #{sum} gold at the casino", 0]) if params[:title] == 'casino' && sum >= 0
    session[:activities].push(["you lost #{-sum} gold at the casino", 1]) if params[:title] == 'casino' && sum < 0

    redirect_to "/"
  end



end
