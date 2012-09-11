source 'https://rubygems.org'

gem 'rails'
gem 'pg'
gem 'unicorn'
gem "jquery-rails"
gem "twitter-bootstrap-rails"
gem "ember-rails"
gem "rabl"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'nokogiri'
  gem "capybara"
  gem "capybara-webkit"
  gem "rspec-rails"
  gem "factory_girl"
  gem "database_cleaner"
  gem "pry"
  gem 'spork', '~> 1.0rc'
end

group :development do
  gem "guard"
  gem "guard-rspec"
  gem 'guard-spork'
  gem 'rspec-nc'
end
