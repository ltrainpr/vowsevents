class GalleryController < ApplicationController
	def index
		@events = Event.order(date: :desc)
		params[:event_id] ? event_found = Event.find(params[:event_id]) : event_found = nil
		event = event_found || Event.first
		photos = event.images.where(testimonial_id: nil).last(8)
		@photo1 = photos[0]
		@photo2 = photos[1]
		@photo3 = photos[2]
		@photo4 = photos[3]
		@photo5 = photos[4]
		@photo6 = photos[5]
		@photo7 = photos[6]
		@photo8 = photos[7]
		@photo_count = photos.count
		@vendors = event.vendors
	end
end
