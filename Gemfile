source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.3'
gem 'pg'
gem 'figaro'
gem 'jbuilder', '~> 2.0'

gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'
gem 'uglifier'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'simple_form'

# validation of date range for reservation
gem 'validates_overlap'

# Add devise for log_in etc
gem 'devise'

# Add paperclip
gem 'aws-sdk', '< 2.0'
gem 'paperclip'

gem 'omniauth-facebook'

# Geocoder
gem "geocoder"

# Google Maps
gem "coffee-rails"
gem "gmaps4rails"

# email
gem "letter_opener", group: :development

# Date Picker
gem 'bootstrap-datepicker-rails'

source 'https://rails-assets.org' do
  gem "rails-assets-underscore"
end

group :development, :test do
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end
