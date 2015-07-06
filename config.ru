require 'rubygems'
require 'bundler'

Bundler.require

require './src/inspiry'
run Sinatra::Application
