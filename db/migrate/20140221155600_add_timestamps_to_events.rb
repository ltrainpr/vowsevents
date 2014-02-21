class AddTimestampsToEvents < ActiveRecord::Migration
  def change
  	add_timestamps :events
  	add_timestamps :images
  	add_timestamps :testimonials
  end
end
