class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = current_user.events.build
  end

 def create
  @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render action: 'new'
    end
  end

end