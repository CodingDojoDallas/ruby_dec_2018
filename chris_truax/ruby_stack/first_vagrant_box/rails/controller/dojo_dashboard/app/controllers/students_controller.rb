class StudentsController < ApplicationController
  def index
    @students = Student.all
    @studentcount = Student.all.count
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.where.not(id: params[:dojo_id])
  end

  def create
    @student = Student.create(student_params)
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Student.find(params[:id]).dojo
    @dojos = Dojo.where.not(id: params[:dojo_id])
  end

  def update
    puts student_params
    @student = Student.find(params[:id]).update(student_params)
    redirect_to "/dojos/#{student_params[:dojo_id]}/students/#{params[:id]}"
  end

  def show
    @dojo = Student.find(params[:id]).dojo
    @student = Student.find(params[:id])
    @students = Dojo.find(params[:dojo_id]).students.where(created_at: @student.created_at.beginning_of_day..@student.created_at.end_of_day).where.not(id:@student.id)
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
