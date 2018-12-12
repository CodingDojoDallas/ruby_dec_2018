class SurveyController < ApplicationController
  def index
  end

  def result
  end

  def create
    flash[:notice] = "Post successfully created"
    puts 'posting ------------------------'
    p flash[:notice]
    p params
    session[:user] = params["user"]
    p session[:user]
    redirect_to '/result'
  end
end
