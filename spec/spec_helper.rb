ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../spec/dummy/config/environment", __FILE__)

require 'rspec/rails'
require 'rspec/autorun'
require 'factory_girl_rails'
require 'database_cleaner'
require 'shoulda/matchers'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.include FactoryGirl::Syntax::Methods
  config.order = 'random'

  # Routes
  #
  config.include EngineOnRails::Engine.routes.url_helpers
  config.before(:each) { @routes = EngineOnRails::Engine.routes }

  # Database Cleaner
  #
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
