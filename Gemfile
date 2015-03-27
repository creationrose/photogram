# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'pry'
gem 'bcrypt-ruby', '~> 3.1.5', require: "bcrypt"

group :development do
  gem 'byebug'  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'web-console', '~> 2.0' # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring' # Spring speeds up development by keeping your application
  gem 'quiet_assets'
  #gem 'better_errors'
end

group :test, :development do
	gem 'rspec-rails'
end

group :test do
	gem 'shoulda-matchers'
	gem 'capybara'
end	

# group :production do
#   gem 'rails_12factor'
# end
