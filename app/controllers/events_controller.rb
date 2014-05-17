class EventsController < ApplicationController
	before_filter :authorize
  def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		if  /\d{2}\/\d{2}\/\d{4}/ =~ event_params[:date]
			new_hash = {name: event_params[:name], date: Date.strptime(event_params[:date], "%m/%d/%Y")}
			@event = Event.create(new_hash)
			flash[:notice] = "Event successfully created"

			redirect_to '/vendors'
		else
			flash[:error] = "Name can't be empty and date needs to be properly formatted"

			redirect_to new_event_path
		end
	end

	private

		def event_params
			params.require(:event).permit(:name, :date)
		end
end
