class Testimonial < ActiveRecord::Base
	has_many :images
	belongs_to :event
	validates :quote, :event_id, presence: true
	validates :url, format: {with: /\Ahttp(|s):\/\//i, message: "Url needs to start with http:// or https://"}, allow_blank: true
end