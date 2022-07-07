require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  set :sessions, true
  configure :development do
    register Sinatra::Reloader
  end

  # get '/' do
  #   'Testing infrastructure working!'
  # end

  get '/' do
    erb :index 
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end

  get '/attack' do
    erb :attack
  end

end
 