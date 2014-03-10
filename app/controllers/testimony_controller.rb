class TestimonyController < ApplicationController
  def index
    @testimonials = Testimonial.all
  end

  def show
    p '*' * 150
    p params
  	@testimonial = Testimonial.find(params[:id])
  end
end
