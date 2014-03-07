class Event < ActiveRecord::Base
	has_many :images
	has_many :testimonials
	has_many :vendors, :through => :events_vendors
end