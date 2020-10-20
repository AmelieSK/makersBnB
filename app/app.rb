require 'sinatra/base'

require_relative 'controllers/app_controller'
require_relative 'controllers/home_controller'
require_relative 'controllers/signup_controller'

class Makersbnb < Sinatra::Base
  # register Sinatra::ActiveRecordExtension

  get '/' do
    erb :index
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    redirect '/add'
  end
  
  get '/add' do
    erb :add
  end
end
