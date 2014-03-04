class WelcomeController < ApplicationController
	def index
		@event = Event.last
	end
end
