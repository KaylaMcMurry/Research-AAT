require 'rubygems'
require 'sinatra'
require 'mongoid'

set :environment, ENV['RACK_ENV'].to_sym
disable :run, :reload

require './thing.rb'
class Application
	configure do
		Mongoid.load! 'mongoid.yml'
	end
end

run Application.new
