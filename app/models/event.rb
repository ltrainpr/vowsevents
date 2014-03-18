class Event < ActiveRecord::Base
	has_many :images
	has_many :testimonials
	has_many :event_vendors
	has_many :vendors, :through => :event_vendors
	validates :name, :date, presence: true
end