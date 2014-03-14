require 'spec_helper'

feature 'Visit the homepage' do
	before :each do
		
		visit root_path
	end

	scenario 'sees index page' do

		expect(page).to have_css '#nav-menu', text: 'Menu'
	end

	scenario 'clicks on Menu' do
		find('#nav-menu').find('h1').click

		expect(page).to have_css '.header', text: 'Gallery'
	end

	scenario 'clicks on Services' do
		find('#nav-services').find('.no_bar').click

		expect(page).to have_css '.direction', text: "hover over for specifics"
	end
end

feature 'Navigation from homepage' do
	Event.create(id: 3, name: "Rhonda & Maynard", date: "2012-06-10", created_at: "2014-03-10 02:57:45", updated_at: "2014-03-10 02:57:45")

	before :each do
		visit root_path
		find('#nav-menu').find('h1').click
	end

	scenario 'Visit Gallery' do
		find('#nav-gallery').find('.no_bar').click


		expect(page).to have_css '#measure'
	end

	scenario 'Visit About Us' do
		find('#nav-about_us').find('.no_bar').click

		expect(page).to have_css '.about_photo.karin'
		expect(page).to have_css '#about-karin.hide'
	end

	scenario 'Visit Testimony' do
		find('#nav-testimony').find('.no_bar').click

		expect(page).to have_css 'h1', text: 'Testimonials'
	end

	scenario 'Visit Blog', js: true do
		find('#nav-blog').find('.no_bar').click

		expect(page).to have_css 'p', text: 'Reblog'
	end

	scenario 'Visit Contact' do
		find('#nav-contact').find('.no_bar').click

		expect(page).to have_css 'h1', text: 'Get in Touch'
	end
end
