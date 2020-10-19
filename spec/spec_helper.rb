require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'capybara/rspec'
require 'app'

ENV['ENVIRONMENT'] = 'test'


Capybara.app = Makersbnb

RSpec.configure do |config|
  
end
