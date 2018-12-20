class EventsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @state_events = Event.where(state: @user.state)
    @other_events = Event.where.not(state: @user.state)
  end

  def create
    event = Event.create(event_params)
    if event.valid?
      flash[:success] = ["Event has been successfully created!"]
      redirect_to "/events"
    else
      flash[:errors] = event.errors.full_messages
      redirect_to "/events"
    end
  end

  def show
    @event = Event.joins(:user).select('*').find(params[:id])
    @events = Event.find(params[:id])
    @comments = Comment.joins(:user).select("*").where(event_id: params[:id]).select("first_name, content")
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    edit_event = Event.find(params[:id])
    edit_event.update(event_params)
    unless edit_event.valid?
      flash[:errors] = edit_event.errors.full_messages
      redirect_to "/events/#{edit_event.id}/edit"
    else
      redirect_to "/events/#{edit_event.id}"
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to "/events"
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :city, :state, :user_id)
  end

end
