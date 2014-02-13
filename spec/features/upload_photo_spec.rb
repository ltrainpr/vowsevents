require 'spec_helper'

feature 'Visit upload_photo page' do
	scenario 'sees form to upload photo' do
		visit upload_photo_index_path

		expect(page).to have_title 'Upload Photo'
		expect(page).to have_css '.field'
	end
end