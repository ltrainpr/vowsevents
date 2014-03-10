class TestimonyController < ApplicationController
  def index
  	@jen_rob = Testimonial.find(1)
  	@rhonda_maynard = Testimonial.find(2)
  	@jen_parents = Testimonial.find(3)
  end

  def show
  	p Testimonial.where(event_id: params[:event_id]).first
  	@testimonial = Testimonial.where(event_id: params[:event_id]).first
  	
  end
end
