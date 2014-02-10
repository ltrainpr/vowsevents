require 'spec_helper'

feature 'Visit the homepage' do
	before :each do
		visit root_path
	end

	scenario 'sees index page' do

		expect(page).to have_title 'Home'
		expect(page).to have_css '#nav-menu', text: 'Menu'
	end

	scenario 'clicks on Menu' do
		find('#nav-menu').find('h1').click

		expect(page).to have_css '.header', text: 'Gallery'
	end

	scenario 'clicks on Services' do
		find('#nav-services').find('.no_bar').click

		expect(page).to have_title 'Services'
		expect(page).to have_css '.direction', text: "hover over for specifics"
	end
end

feature 'Navigation from homepage' do
	before :each do
		visit root_path
		find('#nav-menu').find('h1').click
	end

	scenario 'Visit Gallery' do
		find('#nav-gallery').find('.no_bar').click

		expect(page).to have_title 'Gallery'
	end

	scenario 'Visit About Us' do
		find('#nav-about_us').find('.no_bar').click

		expect(page).to have_title 'About Us'
	end

	scenario 'Visit Testimony' do
		find('#nav-testimony').find('.no_bar').click

		expect(page).to have_title 'Testimony'
	end

	scenario 'Visit Blog' do
		find('#nav-blog').find('.no_bar').click

		expect(page).to have_title 'Blog'
	end

	scenario 'Visit Contact' do
		find('#nav-contact').find('.no_bar').click

		expect(page).to have_title 'Contact'
	end
end
