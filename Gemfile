ruby '1.9.2'
source 'http://rubygems.org'

gem 'rails', '3.1.10'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'devise', '~> 2.0.4'
gem 'cancan', '~> 1.6.7'
gem 'haml-rails', "~> 0.3.4"
gem 'redcarpet', '~> 1.17.2'
gem 'twitter-bootstrap-rails'
gem 'newrelic_rpm'
gem 'activeadmin'
gem 'meta_search', '>= 1.1.0.pre'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'memcachier'
  gem 'dalli'
end
