class TimesController < ApplicationController

  def times
    if session[:times]
      session[:times] += 1
      render :plain => "You visited this url #{session[:times]} times."
    else
      session[:times] = 1
      render :plain => "You visited this url #{session[:times]} time."
    end
  end

  def restart
    session[:times] = nil
    render :plain => "Destroyed the session!"
  end
end
