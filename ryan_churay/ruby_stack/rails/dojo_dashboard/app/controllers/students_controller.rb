class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
  end

  def create
    @new = Student.create(student_params)
    redirect_to "/dojos/#{@new.dojo_id}/"
  end

  def show
    @student = Student.find(params[:id])
    @dojo = Student.find(params[:id]).dojo
    @students = Student.all.where(dojo_id: params[:dojo_id], created_at: @student.created_at.beginning_of_day..@student.created_at.end_of_day).where.not(id: params[:id])
    render 'show'
  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.where.not(id: params[:dojo_id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    puts "******************* student branc #{@student.dojo_id}"
    redirect_to "/dojos/#{@student.dojo_id}/students/#{@student.id}"
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
