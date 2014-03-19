require 'spec_helper'

feature 'Visit Event Index Page' do
	before :each do
		visit events_path
	end

	scenario 'and sees index page' do

		expect(page).to have_css 'h1', text: 'Events'
	end

	scenario 'and sees last three events' do

		expect(page).to have_css '.events'
	end

	scenario 'and see link to new events' do

		expect(page).to have_css 'a', text: 'Create New Event'
	end
end

feature 'Visit New Event Page' do
	scenario 'and create an event' do
		visit new_event_path
		fill_in 'Name', with: 'Jack & Jill'
		fill_in 'Date', with: '03/16/2014'
		click_on 'Create Event'

		expect(page).to have_css 'h1', text: 'Vendors'
	end
end


