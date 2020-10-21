require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'capybara/rspec'
require './app/app'
require_relative 'support/database_cleaner'
require 'active_record'

ENV['ENVIRONMENT'] = 'test'

Capybara.app = Makersbnb
RSpec.configure do |config|
end
