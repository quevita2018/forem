# frozen_string_literal: true

require File.expand_path('../lib/forem/version', __FILE__)
# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = 'forem'
  s.authors = ['Ryan Bigg', 'Philip Arndt', 'Josh Adams']
  s.summary = 'The best Rails forum engine in the world.'
  s.description = 'The best Rails forum engine in the world.'
  s.files = `git ls-files`.split("\n")
  s.version = ::Forem.version

  s.add_development_dependency 'capybara', '~> 2.17.0'
  s.add_development_dependency 'jquery-rails', '~> 4.3.1'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'rspec-activemodel-mocks', '~> 1.0.3'
  s.add_development_dependency 'rspec-rails', '~> 3.7.2'

  s.add_development_dependency 'coffee-rails', '~> 4.2.2'
  s.add_development_dependency 'database_cleaner', '~> 1.0.0'
  s.add_development_dependency 'devise', '~> 4.4.0'
  s.add_development_dependency 'factory_bot_rails', '~> 4.8.2'
  s.add_development_dependency 'kaminari', '~> 1.1.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.7'
  s.add_development_dependency 'timecop', '~> 0.9.1'
  s.add_development_dependency 'warder'

  s.add_dependency 'cancancan', '~> 2.1.3'
  s.add_dependency 'decorators', '~> 2.0.3'
  s.add_dependency 'friendly_id', '~> 5.2.3'
  s.add_dependency 'gemoji', '~> 3.0.0'
  s.add_dependency 'rails', '~> 5.1.4'
  s.add_dependency 'sanitize', '~> 4.5.0'
  s.add_dependency 'select2-rails', '~> 3.5.10'
  s.add_dependency 'simple_form', '~> 3.5.0'
  s.add_dependency 'workflow', '~> 1.2.0'
end
