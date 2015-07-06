require 'sinatra'
require 'json'

get '/' do
  content_type :json
  {
    "status" => "This is just a bot."
  }.to_json
end
