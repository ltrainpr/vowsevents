class GalleryController < ApplicationController
	def index
		last_event = Event.last
		photos = last_event.images.last(3)
		@photo1 = photos[0]
		@photo1 = photos[1]
		@photo1 = photos[2]
	end
end
