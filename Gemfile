source 'http://rubygems.org'
ruby '2.0.0'

gem 'dotenv-rails', :groups => [:development, :test]
gem 'rails', '4.1.0.beta1'
gem 'bcrypt-ruby'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'

gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'sdoc',          group: :doc, require: false
gem 'spring',        group: :development
gem 'paperclip'
gem 'aws-sdk'

group :development, :test do
	gem 'sqlite3'
	gem 'rspec-rails'
	gem 'guard-rspec'
	gem 'rb-fsevent'
	gem 'factory_girl_rails', :require => false
end

group :test do
	gem 'capybara'
	gem 'spork'
	gem 'guard-spork'
	gem 'selenium-webdriver'
	gem 'launchy'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end


