class WelcomeController < ApplicationController
	def index
		@event = Event.last
		@event.testimonials.first ? @latest_testimonial = @event.testimonials.first.id : @latest_testimonial = nil
	end
end
