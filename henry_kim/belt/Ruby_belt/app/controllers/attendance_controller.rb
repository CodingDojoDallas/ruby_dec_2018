class AttendanceController < ApplicationController
  def create
    attendance = Attendance.create(user_id: session[:user_id], organization_id: params[:organization_id])
    redirect_to "/organizations"
  end

  def destroy
    join = Attendance.find(params[:id])
    join.destroy
    redirect_to "/organizations"
  end

  private
    def attendance_params
        params.require(:attendance).permit(:user_id, :organization_id)
    end
end
