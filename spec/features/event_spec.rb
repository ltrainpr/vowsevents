require 'spec_helper'

feature 'Visit Event Index Page' do
	before :each do
		visit '/events'
	end

	scenario 'and sees index page' do

		expect(page).to have_css 'h1', text: 'Events'
	end
	scenario 'and sees last three events' do

		expect(page).to have_css '.events'
	end

	scenario 'and see link to new events' do
		click_on 'Create New Event'

		expect(page).to have_css 'form'
	end
end


