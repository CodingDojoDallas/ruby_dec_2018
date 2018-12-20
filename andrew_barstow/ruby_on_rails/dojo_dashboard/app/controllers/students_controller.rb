class StudentsController < ApplicationController
  def index
    render json: Student.where(dojo_id: params[:dojo_id])
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    render "new"
  end

  def create
    student = Student.new(student_params)
    student.save
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  def show
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    today = Time.now
    @cohort = Student.where(dojo_id: params[:dojo_id])
    @cohort = @cohort.where(["created_at >= ? AND created_at <= ?", @student.created_at.beginning_of_day, @student.created_at.end_of_day])
    @cohort = @cohort.where.not(id: @student.id)
    render "show"
  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    student.save
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to "/dojos/#{params[:dojo_id]}"
  end
  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
  end
end
