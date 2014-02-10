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
		find('#nav-services').find('h1').click

		expect(page).to have_title 'Services'
		expect(page).to have_css 'thin', text: 'hover over specifics'
	end
end

feature 'Navigation from homepage' do
	before :each do
		visit root_path
		find('#nav-menu').find('h1').click
	end

	scenario 'Visit Gallery' do
		find('#nav-gallery').find('h1').click

		expect(page).to have_title 'Gallery'
	end

	scenario 'Visit About Us' do
		find('#nav-about_us').find('h1').click

		expect(page).to have_title 'About Us'
	end

	scenario 'Visit Testimony' do
		find('#nav-testimony').find('h1').click

		expect(page).to have_title 'Testimony'
	end

	scenario 'Visit Blog' do
		find('#nav-blog').find('h1').click

		expect(page).to have_title 'Blog'
	end

	scenario 'Visit Contact' do
		find('#nav-blog').find('h1').click

		expect(page).to have_title 'Contact'
	end
end
