require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'database_cleaner'

RSpec.configure do |config|
  config.include Rails.application.routes.url_helpers

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

end