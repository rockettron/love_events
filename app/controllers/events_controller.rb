class EventsController < ApplicationController

	def home
	end

	def show
		# byebug
		@event = DEFAULT_EVENT
		@photos = DEFAULT_PHOTO * 3
	end

	DEFAULT_EVENT = {
		id: 1,
		title: "Example",
		description: "I Love Lizka!",
		datetime: DateTime.now,
		complete: true
	}

	DEFAULT_PHOTO = [{
		id: 1,
		path: Dir.pwd + 'try.jpg',
		description: "We are loving"
	}]

end
