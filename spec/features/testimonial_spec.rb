require 'spec_helper'

feature 'Visit Testimonial Index Page' do
	scenario 'and sees link to create new testimonials' do
		visit testimonials_path

		expect(page).to have_css 'a', text: 'Create New Testimonial'
	end

	scenario 'and sees list of testimonials' do
		visit testimonials_path

		expect(page).to have_css 'ol.testimonials'
	end

	scenario 'and clicks link to create new testimonials' do
		visit testimonials_path
		click_on('Create New Testimonial')

		expect(page).to have_css 'form input'
	end
end