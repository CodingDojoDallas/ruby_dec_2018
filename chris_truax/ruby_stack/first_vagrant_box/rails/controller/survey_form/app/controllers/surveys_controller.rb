class SurveysController < ApplicationController
  def new
  end

  def create
    @survey = Survey.create(survey_params)
    session[:survey_id] = @survey.id
    if session[:count]
      session[:count] += 1
    else
      session[:count] = 1
    end
    flash[:success] = "Thanks for submitting this form! You have submitted this form " + session[:count].to_s + " times now."
    redirect_to '/surveys/show'
  end

  def show
    @survey = Survey.find(session[:survey_id])
    
  end

  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
