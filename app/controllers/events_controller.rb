class EventsController < ApplicationController

	def home
		@events_not = Event.where(completed: false)
		@events_yes = Event.where(completed: true)			
	end

	def show
		@event = Event.find(params[:id])
		@photos = Photo.where(event: @event)
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to event_path(@event), notice: "Your event has been added"
		else 
			render 'new'
		end
	end

private 
	def event_params
		params.require(:event).permit(:title, :description, :datetime, :completed)
	end

end
