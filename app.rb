require 'rubygems'
#require 'bundler/setup'

require 'sinatra'
set :bind, '0.0.0.0'
get '/' do
 "Hello jbfink, it's #{Time.now} at the server!"
end

