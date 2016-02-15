require 'rubygems'
require 'sinatra'
require 'rails/mongoid'
require './problem2'

configure do
    Mongoid.load!(Rails.root.join("config", "mongoid.yml"))
    #Mongoid.purge!
end

set :environment, Sinatra::Base.environment
disable :run, :reload

run Sinatra::Application