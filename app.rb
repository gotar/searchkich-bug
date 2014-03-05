require 'bundler/setup'
require 'sinatra/base'
require 'mongoid'
require 'searchkick'

require_relative 'models/product'
require_relative 'models/category'

Mongoid.load!("config/mongoid.yml")

class App < Sinatra::Base
end
