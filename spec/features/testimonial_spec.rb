require 'spec_helper'

feature 'Visit Testimonial Index Page' do
	before :each do
		visit testimonials_path
	end

	scenario 'and sees link to create new testimonials' do
		
		expect(page).to have_css 'a', text: 'Create New Testimonial'
	end

	scenario 'and sees list of testimonials' do
		

		expect(page).to have_css 'ol.testimonials'
	end

	scenario 'and clicks link to create new testimonials' do
		
		click_on('Create New Testimonial')

		expect(page).to have_css 'form input'
	end
end

feature 'Visit New Testimonail Page' do
	scenario 'and creates testimonial', js: true do
		visit new_testimonial_path
		fill_in('Quote', with: 'Thanks to Vows I had freaking blast!')
		find(:select, "Event").first(:option, 'Jen & Rob').select_option
		# select( "Karin & Lionel" , from: 'Event')
		click_on('Create Testimonial')

		expect(page).to have_content "Successfully Created Testimonial" 
	end
end