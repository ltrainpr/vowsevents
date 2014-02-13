class Event < ActiveRecord::Base
	has_many :images
	has_many :testimonials
end