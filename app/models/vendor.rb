class Vendor < ActiveRecord::Base
	has_many :events, :through => :events_vendors
end