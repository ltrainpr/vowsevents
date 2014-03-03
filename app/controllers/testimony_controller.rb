class TestimonyController < ApplicationController
  def index
  	@jen_rob = Testimonial.find(1)
  	@rhonda_maynard = Testimonial.find(2)
  	@jen_parents = Testimonial.find(3)
  end

  def show
  	@testimonial = Testimonial.find(params[:id])
  	
  end
end
