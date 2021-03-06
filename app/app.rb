require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/flash'

require_relative 'models/user'
require_relative 'models/space'
require 'date'
require 'pry'
require 'bcrypt'

class Makersbnb < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  register Sinatra::Flash
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
    user.save!
      session[:user_id] = user.id
      redirect '/signin'
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

  post '/add' do
    Space.create(name: params[:name], description: params[:description], price: params[:price])
    redirect '/list'
  end

  get '/list' do
    @spaces = Space.all
    erb :list
  end

  get '/book' do
    erb :book
  end

  post '/book' do
    erb :confirmation
  end

end
