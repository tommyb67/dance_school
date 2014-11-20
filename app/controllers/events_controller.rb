class EventsController < ApplicationController

  def index
    @events = Event.order('created_at desc')
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if current_user.admin? && @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render action: 'new'
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:name, :location, :description)
  end

end