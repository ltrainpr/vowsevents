class TestimonialsController < ApplicationController
  before_filter :authorize
	def index
		@testimonials = Testimonial.all
	end

	def new
		@testimonial = Testimonial.new
	end

	def create

	end
end
