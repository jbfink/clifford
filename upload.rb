require 'rubygems'
#require 'bundler/setup'

require 'sinatra'
require 'haml'
set :bind, '0.0.0.0'
get "/upload" do
  haml :upload
end      

# Handle POST-request (Receive and save the uploaded file)
post "/upload" do 
  File.open('uploads/' + params['myfile'][:filename], "w") do |f|
    f.write(params['myfile'][:tempfile].read)
  end
  return "The file was successfully uploaded!"
end
