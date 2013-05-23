source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 3.2'
gem 'airbrake'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'haml-rails'
gem 'jquery-rails'
gem 'less-rails'
gem 'pg'
gem 'ransack'
gem 'twitter-bootstrap-rails'
gem 'unicorn'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes

group :production do
  gem 'newrelic_rpm'
end

group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'sass-rails', '~> 3.2.3'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'coveralls', :require => false
  gem 'factory_girl_rails'
  gem 'tconsole'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', :require => false
end

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
