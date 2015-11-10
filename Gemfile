source 'https://rubygems.org'

gem 'rails', '4.2.4'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem "bootstrap-sass", "~> 3.3"
gem "font-awesome-rails", "~> 4.3"
gem "simple_form", "~> 3.1.0"
gem "devise", "~> 3.4.1"
gem "pundit", "~> 0.3.0"   
gem "carrierwave", "~> 0.10.0"
gem 'rmagick', "~> 2.15.4"

group :test do 
	gem "capybara", "~> 2.4"
	gem "factory_girl_rails", "~> 4.5"
end

group :development, :test do
	gem "rspec-rails"
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do 
	gem 'pg'
	gem 'rails_12factor', group: :production
end

