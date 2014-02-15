require 'spec_helper'

feature 'Visit upload_photo page' do
	scenario 'sees form to upload photo' do
		visit new_image_path

		expect(page).to have_css '.field'
	end
end