class EventVendor < ActiveRecord::Base
	belongs_to :event
	belongs_to :vendor
	validates :event_id, uniqueness: {:scope => :vendor_id}
end