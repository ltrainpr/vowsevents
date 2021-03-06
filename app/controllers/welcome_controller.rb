require 'net/http'
require 'json'

class WelcomeController < ApplicationController
	def index
		@event = Event.order(date: :desc).limit(1).first
    if @event
		  @event.testimonials.first ? @latest_testimonial = @event.testimonials.first.id : @latest_testimonial = nil
    end
    res = Net::HTTP.get_response(URI("http://api.tumblr.com/v2/blog/vowsevents.tumblr.com/posts/text?api_key=#{ENV['TUMBLR_API_KEY']}&limit=1"))
    parsed_json = JSON.parse(res.body)
    JSON.pretty_generate(parsed_json['response']['posts'])
    date = parsed_json['response']['posts'][0]['date']
    parsed_date = DateTime.parse(date)
    @date = parsed_date.strftime("%b %d %Y")
    @title = parsed_json['response']['posts'][0]['title']
	end
end
