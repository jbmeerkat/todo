source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 3.2'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'pg'
gem 'unicorn'
gem 'haml-rails'
gem 'less-rails'
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'jquery-rails'
gem 'jbuilder', '~> 1.0.1'
gem 'airbrake'

group :production do
  gem 'newrelic_rpm'
end

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :test do
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
