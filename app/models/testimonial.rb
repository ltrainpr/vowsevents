class Testimonial < ActiveRecord::Base
	has_many :images
	belongs_to :event
end