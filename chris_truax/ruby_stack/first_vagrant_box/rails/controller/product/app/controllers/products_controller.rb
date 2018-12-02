class ProductsController < ApplicationController
  def index
    render text: 'What do you want me to say???'
  end
  def say
    render text: 'Saying Hello!'
  end

  def sayname
    render text: 'Saying Hello ' + params[:name] + '!'
  end

  def new
    render text: 'Hello CodingDojo!'
  end

  def times
    if session[:count]
      session[:count] += 1
    else
      session[:count] = 1
    end
    render text: 'You have visited this URL ' + session[:count].to_s + ' time(s).'
  end

  def times_reset
    session.clear
    render text: 'Destroyed the session!'
  end
end
