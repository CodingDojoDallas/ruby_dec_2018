class StudentsController < ApplicationController

  def index
    render json: Student.where(dojo_id: params[:dojo_id])
  end


  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @cohort = Student.where(dojo_id: params[:dojo_id])
    @cohort = @cohort.where(["created_at >= ? AND created_at <= ?", @student.created_at.beginning_of_day, @student.created_at.end_of_day])
    @cohort = @cohort.where.not(id: @student.id)
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def create
    Student.create(student_params)
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
    puts @student.first_name
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    student.save
    redirect_to "/dojos/#{params[:dojo_id]}"
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
