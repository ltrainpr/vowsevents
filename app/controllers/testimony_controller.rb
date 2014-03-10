class TestimonyController < ApplicationController
  def index
    @testimonials = Testimonial.all
  end

  def show
  	@testimonial = Testimonial.where(event_id: params[:event_id]).first
  end
end
