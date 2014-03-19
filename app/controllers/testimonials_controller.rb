class TestimonialsController < ApplicationController
	def index
		@testimonials = Testimonial.all
	end

	def new
		@testimonial = Testimonial.new
	end
end
