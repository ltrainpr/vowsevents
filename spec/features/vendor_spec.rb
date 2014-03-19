require 'spec_helper'

feature 'Visit Vendor Index Page' do
	scenario 'and sees list of vendors' do
		visit '/vendors'

		expect(page).to have_css 'ol.vendors'
	end

	# scenario 'and sees link to New Vendor Page' do
	# 	visit '/vendors'

	# 	expect(page).to have_css 'a', text: 'Create New Vendor' 
	# end
end

# feature 'Visit New Vendor Page' do
# 	scenario 'and sees list of vendors' do
# 		visit '/vendors/new'

# 		expect(page).to have_css 'ol.vendors'
# 	end

# 	scenario 'and sees form fields' do
# 		visit '/vendors/new'

# 		expect(page).to have_css 'form input'
# 	end

# 	scenario 'and create a new Vendor' do
# 		visit '/vendors/new'

# 		expect(page).to have_css 'h1', text: 'Testimonials'
# 	end
# end