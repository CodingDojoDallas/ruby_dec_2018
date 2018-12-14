class RsvpsController < ApplicationController
    def create
        @rsvp = Rsvp.new(rsvp_params)
        if @rsvp.valid?
            @rsvp.save
            return redirect_to '/events'
        else
            flash[:errors] = @rsvp.errors.full_messages
            return redirect_to '/events'
        end
    end

    def destroy
        @rsvp = Rsvp.find(params[:id])
        if @rsvp.destroy
            return redirect_to "/events"
        else
            flash[:errors] = @rsvp.errors.full_messages
            return redirect_to "/events"
        end 
    end
    private
        def rsvp_params
            params[:rsvp][:user_id] = session[:user_id]
            params.require(:rsvp).permit(:user_id, :event_id)
        end
end
