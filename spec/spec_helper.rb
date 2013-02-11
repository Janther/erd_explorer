require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)

  require 'rspec/rails'
  require 'remarkable_activerecord'
  require 'capybara/rails'
  require 'capybara/rspec'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    # config.mock_with :rspec
    # config.use_transactional_fixtures = true

    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.filter_run :focus => true
    config.run_all_when_everything_filtered = true
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.
  FactoryGirl.reload
end
