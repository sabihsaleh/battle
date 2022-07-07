require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  set :sessions, true
  configure :development do
    register Sinatra::Reloader
  end
#   set :foo, 'bar'

  # get '/' do
  #   'Testing infrastructure working!'
  # end

  get '/' do
    erb :index 
  end
  post '/names' do
    @player1 = params[:Player1]
    @player2 = params[:Player2]
    erb :play
  end
end
 