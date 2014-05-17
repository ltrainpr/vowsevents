class Vendor < ActiveRecord::Base
	has_many :events_vendors
	has_many :events, :through => :event_vendors
	validates :url, format: {with: /\Ahttp(|s):\/\//i, message: "Url needs to start with http:// or https://"}, allow_blank: true
end