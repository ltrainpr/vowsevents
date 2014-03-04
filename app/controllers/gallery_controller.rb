class GalleryController < ApplicationController
	def index
		@events = Event.all
		params[:event_id] ? event_found = Event.find(params[:event_id]) : event_found = nil
		event = event_found || Event.first
		photos = event.images.where(testimonial_id: nil).last(3)
		@photo1 = photos[0]
		@photo2 = photos[1]
		@photo3 = photos[2]
	end
end
