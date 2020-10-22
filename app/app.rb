require 'sinatra/base'
require 'sinatra/activerecord'

require_relative 'controllers/app_controller'
require_relative 'controllers/home_controller'
require_relative 'controllers/signup_controller'
require_relative 'controllers/sessions_controller'
require_relative 'models/user'

class Makersbnb < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions

  get '/' do
    erb :index
  end

  get '/signup' do
    erb (:'signup/signup')
  end

  post '/signup' do
    user = User.new(email: params[:email])
    user.password = params[:password]
    if user.save!
      session[:user_id] = user.id
      redirect '/signin'
    else
    end
  end

  get '/signin' do
    erb (:'sessions/signin')
  end

  post '/signin' do
    user = User.authenticate(email: params[:email], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect '/logged'
    else
      redirect '/signin'
    end
  end

  get '/logged' do
    erb :logged
  end

  get '/add' do
    erb :add
  end

  get '/list' do
    erb :list
  end

end
