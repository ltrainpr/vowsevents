require 'spec_helper'

feature 'View the homepage' do
	scenario 'user sees index page' do
		visit root_path

		expect(page).to have_title 'Home'
		expect(page).to have_css '#nav-menu', text: 'Menu'
	end
end