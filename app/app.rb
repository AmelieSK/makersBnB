require 'sinatra/base'
require 'sinatra/activerecord'

require_relative 'controllers/app_controller'
require_relative 'controllers/home_controller'
require_relative 'controllers/signup_controller'
require_relative 'models/user'

class Makersbnb < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    erb :index
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    user = User.new(email: params[:email])
    user.password = params[:password]
    if user.save!
      session[:user.id] = user.id
      redirect '/signin'
    else
    end
  end

  get '/signin' do
    erb :signin
  end

  post '/signin' do
    user = User.authenticate(email: params[:email], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect '/add'
    else
      redirect '/signin'
    end
  end
  
  get '/add' do
    erb :add
  end

end
