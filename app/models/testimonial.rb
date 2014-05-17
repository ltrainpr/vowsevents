class Testimonial < ActiveRecord::Base
	has_many :images
	belongs_to :event
	validates :quote, :event_id, presence: true
end