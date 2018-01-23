# frozen_string_literal: true

require 'database_cleaner'

RSpec.configure do |config|
  config.before(:each) do |example|
    DatabaseCleaner.strategy = if example.metadata[:js]
                                 :truncation
                               else
                                 :transaction
                               end
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
