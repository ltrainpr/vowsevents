require 'spec_helper'

feature 'View the homepage' do
	scenario 'user sees under construction page' do
		visit root_path

		expect(page).to have_title 'Vows Events'
		expect(page).to have_css '.right', text: 'Vows Events'
	end
end