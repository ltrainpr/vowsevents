class GalleryController < ApplicationController
	def index
		last_event = Event.first
		photos = last_event.images.last(3)
		@photo1 = photos[0]
		@photo2 = photos[1]
		@photo3 = photos[2]
	end
end
