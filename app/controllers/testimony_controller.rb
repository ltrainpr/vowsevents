class TestimonyController < ApplicationController
  def index
    @testimonials = Testimonial.all
  end

  def show
  	@testimonial = Testimonial.find(params[:id])
  end
end
