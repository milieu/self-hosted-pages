# A simple web app built on top of Ruby and Sinatra.

require 'sinatra'
require 'json'

if ARGV.length != 2
  raise 'Expected exactly two arguments: SERVER_PORT SERVER_TEXT'
end

server_port = ARGV[0]
server_text = ARGV[1]

set :port, server_port
set :bind, '0.0.0.0'

before do
  headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  headers['Access-Control-Allow-Origin'] = '*'
  headers['Access-Control-Allow-Headers'] = 'accept, authorization, origin'
end

options '*' do
  response.headers['Allow'] = 'HEAD,GET,PUT,DELETE,OPTIONS,POST'
  response.headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept'
end

get '/' do
  server_text
end
