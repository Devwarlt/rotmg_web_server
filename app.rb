#!/usr/bin/env ruby
#This file was created by Giorgio/Trapped

require 'sinatra'
require './models'
require 'colorize'
require 'sinatra/activerecord'

set :database_file, 'config/database.yml'

# Central handler manager, accessible from handlers
module HandlerRegistry
  def self.discover()
    Dir["#{File.dirname(__FILE__)}/handlers/**/*.rb"].each do |file|
      require file
    end
  end
end

puts "Loading handlers"
not_found do
  status 404
  "not found"
end
puts "Loaded #{HandlerRegistry.discover} handlers".green

set :port, 80
puts "Listening for requests on port #{settings.port}".green

class App < Sinatra::Base

end