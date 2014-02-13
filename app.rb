require 'bundler/setup'
require 'sinatra/base'
require 'mongoid'
require 'searchkick'

require_relative 'models/product'

Mongoid.load!("config/mongoid.yml")

class App < Sinatra::Base
end
