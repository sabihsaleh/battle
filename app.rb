require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  set :sessions, true
  configure :development do
    register Sinatra::Reloader
  end
#   set :foo, 'bar'

  get '/' do
    'Testing infrastructure working!'
  end

#   get '/hello' do
#     'Hello!'
#   end
end