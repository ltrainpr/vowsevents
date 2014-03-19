require 'spec_helper'

feature 'Visit Vendor Index Page' do
	before :each do
		visit vendors_path
	end

	scenario 'and sees list of vendors' do

		expect(page).to have_css 'ol.vendors'
	end

	scenario 'and sees link to New Vendor Page' do

		expect(page).to have_css 'a', text: 'Create New Vendor' 
	end
end

feature 'Visit New Vendor Page' do
	before :each do
		visit new_vendor_path
	end

	scenario 'and sees events list' do

		expect(page).to have_css 'ol.events'
	end

	scenario 'and sees form fields' do

		expect(page).to have_css 'form input'
	end

	scenario 'and sees link to Testimonials' do

		expect(page).to have_css 'a', text: 'See List of Testimonials'
		expect(page).to have_css 'a', text: 'Create New Testimonials'
	end

	scenario 'and create a new Vendor' do
		fill_in('Name', with: 'Jake\'s Florist')
		fill_in('Email', with: 'jake@jakesflorist.com')
		fill_in('Vendor type', with: 'Florist')
		click_on('Create Vendor')

		expect(page).to have_content 'Successfully Saved'
	end
end