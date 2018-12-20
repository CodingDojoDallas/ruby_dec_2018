class AttendanceController < ApplicationController

  def create
    attendance = Attendance.create(user_id: session[:user_id], event_id: params[:event_id])
    redirect_to "/events"
end

    def destroy
    join = Attendance.find(params[:id])
    join.destroy
    redirect_to "/events"
  end

private
    def attendance_params
        params.require(:attendance).permit(:user_id, :event_id)
    end
end
