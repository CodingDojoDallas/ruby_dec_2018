class EventsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @events = Event.where(estate: current_user.state)
    @otherevents = Event.where.not(estate: current_user.state)
    @rsvps = Rsvp.where(user: current_user)
  end

  def show
    @event = Event.find(params[:id])
    @event_rsvps =  Event.find(params[:id]).users_rsvped
    @event_comments = Event.find(params[:id]).comments
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      return redirect_to '/events'
    else
      flash[:errors] = @event.errors.full_messages
      return redirect_to '/events'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      return redirect_to "/events"
    else
      flash[:errors] = @event.errors.full_messages
      return redirect_to "/events/#{params[:id]}/edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      return redirect_to "/events"
    else
      flash[:errors] = @event.errors.full_messages
      return redirect_to "/events"
    end 
  end

  private
    def event_params
      params[:event][:user_id] = session[:user_id]
      params.require(:event).permit(:name, :edate, :ecity, :estate, :user_id)
    end
end
