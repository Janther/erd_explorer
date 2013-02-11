source 'http://rubygems.org'

# RAILS
gem 'rails', '3.2.11'
gem 'thin'

# Database
gem 'mysql2'

# Compilador HAML
gem 'haml-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # Precompilador SASS-COMPASS
  gem 'sass-rails'
  gem 'compass-rails'
  # Precompilador COFFEESCRIPT
  gem 'coffee-rails'
  # Precompilador
  gem 'uglifier'
  # Foundation
  gem 'zurb-foundation'
  # Iconos
  gem 'font-awesome-sass-rails'
  # Jquery
  gem 'jquery-rails'
  # Backbone
  gem 'backbone-on-rails'
  # Formularios
  gem 'uniformjs-rails'
  gem 'select2-rails'
end

group :development do
  # Debuging like a pro
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  # Guard needs this to work on mac
  gem 'rb-fsevent'
  # Reloads CSS on changes.
  gem 'guard-livereload'
  gem 'rails-dev-boost'
  gem 'pry-rails'
end

group :development, :test do
  # Guard
  gem 'guard'
  # Guard Notifications
  gem 'terminal-notifier-guard'
  # Jasmine
  gem 'jasminerice'
end

group :test do
  # Rspec
  gem 'rspec-rails'
  gem 'rspec-instafail'
  # Rspec Matchers
  gem 'remarkable_activerecord'
  # Loads the Rails app and keeps it in memory
  gem 'spork-rails'
  # Repeats tests on changes
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-jasmine'
  # Factories
  gem 'factory_girl_rails'
  # Navegacion para los tests
  gem 'capybara'
end
