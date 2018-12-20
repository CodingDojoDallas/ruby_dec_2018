require 'date'
class StudentsController < ApplicationController

  def new
    @dojo = Dojo.find(params[:dojo_id])
    puts @dojo.branch
    @dojos = Dojo.all
  end

  def create
    new_student_params = params[:student]
    @first_name         = new_student_params[:first_name]
    @last_name         = new_student_params[:last_name]
    @email           = new_student_params[:email]
    @dojo          = Dojo.find(new_student_params[:dojo])
    @student           = Student.create(first_name: @first_name, last_name: @last_name, email: @email, dojo: @dojo)
    puts("ERRORS: #{@student.errors.full_messages}")
    puts("ERROR COUNT: #{@student.errors.count}")
    flash[:student_errors] = @student.errors.full_messages
    puts flash[:student_errors]
    if flash[:student_errors].length > 0
      redirect_to :action => "new"
    else
      redirect_to :action => "show", :controller => "dojos", :id => @dojo.id
    end
  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @full_name = "#{@student.first_name} #{@student.last_name}"
    cohort_date = @student.created_at.to_date
    @students = Student.where("dojo_id = :dojo_id AND date(created_at) = :cohort_date AND id != :id", 
      {dojo_id: params[:dojo_id], cohort_date: cohort_date, id: params[:id]})
  end

  def edit
    @dojo = Dojo.find(params[:dojo_id])
    @other_dojos = Dojo.where("id != :id", {id: params[:dojo_id]})
    @student = Student.find(params[:id])
    @full_name = "#{@student.first_name} #{@student.last_name}"
  end

  def update
    new_student_params = params[:student]
    @first_name         = new_student_params[:first_name]
    @last_name         = new_student_params[:last_name]
    @email           = new_student_params[:email]
    @dojo          = Dojo.find(new_student_params[:dojo])
    @student           = Student.create(first_name: @first_name, last_name: @last_name, email: @email, dojo: @dojo)
    redirect_to :action => "show"
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to :action => "show", :controller => "dojos", :id => params[:dojo_id]
  end

end
