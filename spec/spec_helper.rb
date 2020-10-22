require 'capybara/rspec'
require './app/app'
require 'simplecov'
require 'simplecov-console'
require_relative 'support/database_cleaner'
require 'active_record'

ENV['ENVIRONMENT'] = 'test'

Capybara.app = Makersbnb
