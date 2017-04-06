ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'capybara/dsl' #adding this
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'
