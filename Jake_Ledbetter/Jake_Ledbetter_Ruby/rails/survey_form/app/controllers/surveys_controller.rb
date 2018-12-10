class SurveysController < ApplicationController
  def index
    if session.has_key?(:count)
      session[:count] += 1
    else
      session[:count] = 1
    end
  end
  def process_form
    if session.has_key?(:count)
     end
    session[:result] = params

    return redirect_to '/result'
  end

  def result
    @results = session[:result]
    @count = session[:count]
    return render 'result'
  end
end

